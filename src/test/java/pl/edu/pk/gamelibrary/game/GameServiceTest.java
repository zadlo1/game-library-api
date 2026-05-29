package pl.edu.pk.gamelibrary.game;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.context.ApplicationEventPublisher;
import pl.edu.pk.gamelibrary.events.listener.RatingStatsCache;
import pl.edu.pk.gamelibrary.exception.ResourceNotFoundException;
import pl.edu.pk.gamelibrary.game.dto.GameRequest;
import pl.edu.pk.gamelibrary.genre.Genre;
import pl.edu.pk.gamelibrary.genre.GenreRepository;
import pl.edu.pk.gamelibrary.platform.Platform;
import pl.edu.pk.gamelibrary.platform.PlatformRepository;
import pl.edu.pk.gamelibrary.review.ReviewRepository;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * Testy jednostkowe dla GameService.
 *
 * Pokryte przypadki:
 *  - happy path  : poprawne dane wejściowe → oczekiwany rezultat
 *  - negatywny   : zasób nie istnieje → ResourceNotFoundException
 *  - walidacja   : nieprawidłowe pole (title null / blank) → IllegalArgumentException
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("GameService – testy jednostkowe")
class GameServiceTest {

    // ------------------------------------------------------------------ mocks

    @Mock private GameRepository gameRepository;
    @Mock private ReviewRepository reviewRepository;
    @Mock private ApplicationEventPublisher eventPublisher;
    @Mock private RatingStatsCache ratingStatsCache;
    @Mock private GenreRepository genreRepository;
    @Mock private PlatformRepository platformRepository;

    @InjectMocks
    private GameService gameService;

    // ------------------------------------------------------------------ helpers

    /** Buduje prosty GameRequest z tytułem i wymaganymi polami. */
    private GameRequest buildRequest(String title) {
        GameRequest req = new GameRequest();
        req.setTitle(title);
        req.setDescription("opis");
        req.setGenres(List.of("RPG"));
        req.setPlatforms(List.of("PC"));
        req.setReleaseYear(2020);
        return req;
    }

    /** Stubuje GenreRepository i PlatformRepository – zwraca istniejące encje. */
    private void stubResolvers() {
        when(genreRepository.findByNameIgnoreCase(anyString()))
                .thenAnswer(inv -> Optional.of(new Genre(inv.getArgument(0))));
        when(platformRepository.findByNameIgnoreCase(anyString()))
                .thenAnswer(inv -> Optional.of(new Platform(inv.getArgument(0))));
    }

    /** Ustawia prywatne pole {@code id} przez refleksję (brak publicznego settera). */
    private static void setId(Game game, Long id) {
        try {
            var field = Game.class.getDeclaredField("id");
            field.setAccessible(true);
            field.set(game, id);
        } catch (Exception e) {
            throw new RuntimeException("Nie udało się ustawić id przez refleksję", e);
        }
    }

    // ============================================================ getGameById

    @Nested
    @DisplayName("getGameById")
    class GetGameById {

        /**
         * HAPPY PATH – istniejące id zwraca poprawny obiekt gry.
         */
        @Test
        @DisplayName("zwraca grę gdy findById(1L) ją znajdzie")
        void getGameById_shouldReturnGame_whenFound() {
            // given
            Game mockGame = new Game();
            mockGame.setTitle("The Witcher 3");
            mockGame.setReleaseYear(2015);
            mockGame.setGenres(List.of(new Genre("RPG")));
            mockGame.setPlatforms(List.of(new Platform("PC")));

            when(gameRepository.findById(1L)).thenReturn(Optional.of(mockGame));

            // when
            Game result = gameService.getGameById(1L);

            // then
            assertNotNull(result, "Zwrócona gra nie powinna być null");
            assertEquals("The Witcher 3", result.getTitle(),
                    "Tytuł gry powinien być 'The Witcher 3'");
            assertEquals(2015, result.getReleaseYear());
            assertEquals(1, result.getGenres().size());
            assertEquals("RPG", result.getGenres().get(0).getName());

            verify(gameRepository, times(1)).findById(1L);
        }

        /**
         * PRZYPADEK NEGATYWNY – zasób nie istnieje → ResourceNotFoundException.
         */
        @Test
        @DisplayName("rzuca ResourceNotFoundException gdy findById(99L) zwróci Optional.empty()")
        void getGameById_shouldThrow_whenNotFound() {
            // given
            when(gameRepository.findById(99L)).thenReturn(Optional.empty());

            // when / then
            ResourceNotFoundException ex = assertThrows(
                    ResourceNotFoundException.class,
                    () -> gameService.getGameById(99L),
                    "Powinien zostać rzucony ResourceNotFoundException gdy gra nie istnieje"
            );

            assertTrue(ex.getMessage().contains("99"),
                    "Komunikat wyjątku powinien zawierać id=99");

            verify(gameRepository, times(1)).findById(99L);
        }
    }

    // ================================================================ getAllGames

    @Nested
    @DisplayName("getAllGames")
    class GetAllGames {

        /**
         * HAPPY PATH – repozytorium zwraca listę gier.
         */
        @Test
        @DisplayName("zwraca listę wszystkich gier z repozytorium")
        void getAllGames_shouldReturnListFromRepository() {
            // given
            Game gameA = new Game();
            gameA.setTitle("Game A");

            Game gameB = new Game();
            gameB.setTitle("Game B");

            when(gameRepository.findAll()).thenReturn(List.of(gameA, gameB));

            // when
            List<Game> result = gameService.getAllGames();

            // then
            assertNotNull(result);
            assertEquals(2, result.size(), "Powinny zostać zwrócone 2 gry");
            assertEquals("Game A", result.get(0).getTitle());

            verify(gameRepository, times(1)).findAll();
        }
    }

    // ================================================================ createGame

    @Nested
    @DisplayName("createGame")
    class CreateGame {

        /**
         * HAPPY PATH – poprawna gra jest zapisywana i zwracana z id.
         */
        @Test
        @DisplayName("zapisuje grę i zwraca ją z nadanym id")
        void createGame_shouldReturnSavedGameWithId() {
            // given
            stubResolvers();

            GameRequest request = buildRequest("Cyberpunk 2077");

            Game saved = new Game();
            saved.setTitle("Cyberpunk 2077");
            setId(saved, 42L);

            when(gameRepository.save(any(Game.class))).thenReturn(saved);

            // when
            Game result = gameService.createGame(request);

            // then
            assertNotNull(result.getId(), "Zwrócona gra powinna mieć nadane id");
            assertEquals(42L, result.getId(), "Id powinno wynosić 42");
            assertEquals("Cyberpunk 2077", result.getTitle());

            verify(gameRepository, times(1)).save(any(Game.class));
        }

        /**
         * WALIDACJA BIZNESOWA – title == null → odrzucenie, zapis NIE wywołany.
         */
        @Test
        @DisplayName("rzuca IllegalArgumentException gdy title jest null")
        void createGame_shouldThrow_whenTitleIsNull() {
            // given
            GameRequest request = buildRequest(null);

            // when / then
            IllegalArgumentException ex = assertThrows(
                    IllegalArgumentException.class,
                    () -> gameService.createGame(request),
                    "Powinien zostać rzucony IllegalArgumentException gdy title == null"
            );

            assertNotNull(ex.getMessage(), "Wyjątek powinien mieć komunikat");
            verify(gameRepository, never()).save(any());
        }

        /**
         * WALIDACJA BIZNESOWA – title składa się wyłącznie z białych znaków → odrzucenie.
         */
        @Test
        @DisplayName("rzuca IllegalArgumentException gdy title jest pustym / białym stringiem")
        void createGame_shouldThrow_whenTitleIsBlank() {
            // given
            GameRequest request = buildRequest("   ");

            // when / then
            assertThrows(
                    IllegalArgumentException.class,
                    () -> gameService.createGame(request),
                    "Powinien zostać rzucony IllegalArgumentException gdy title jest pusty"
            );

            verify(gameRepository, never()).save(any());
        }

        /**
         * WALIDACJA BIZNESOWA – pusty string "" → odrzucenie.
         */
        @Test
        @DisplayName("rzuca IllegalArgumentException gdy title jest pustym stringiem \"\"")
        void createGame_shouldThrow_whenTitleIsEmptyString() {
            // given
            GameRequest request = buildRequest("");

            // when / then
            assertThrows(
                    IllegalArgumentException.class,
                    () -> gameService.createGame(request),
                    "Powinien zostać rzucony IllegalArgumentException gdy title == \"\""
            );

            verify(gameRepository, never()).save(any());
        }
    }

    // ================================================================ updateGame

    @Nested
    @DisplayName("updateGame")
    class UpdateGame {

        /**
         * HAPPY PATH – istniejąca gra jest aktualizowana poprawnymi danymi.
         */
        @Test
        @DisplayName("aktualizuje i zwraca grę gdy id istnieje")
        void updateGame_shouldUpdateAndReturnGame_whenFound() {
            // given
            stubResolvers();

            Game existing = new Game();
            existing.setTitle("Stary Tytuł");
            existing.setDescription("stary opis");
            setId(existing, 1L);

            GameRequest request = new GameRequest();
            request.setTitle("Nowy Tytuł");
            request.setDescription("nowy opis");
            request.setGenres(List.of("FPS"));
            request.setPlatforms(List.of("PS5"));
            request.setReleaseYear(2022);
            request.setCoverUrl("http://cover.jpg");

            when(gameRepository.findById(1L)).thenReturn(Optional.of(existing));
            when(gameRepository.save(any(Game.class))).thenAnswer(inv -> inv.getArgument(0));

            // when
            Game result = gameService.updateGame(1L, request);

            // then
            assertEquals("Nowy Tytuł", result.getTitle());
            assertEquals("nowy opis", result.getDescription());
            assertEquals(2022, result.getReleaseYear());
            assertEquals("http://cover.jpg", result.getCoverUrl());
            assertEquals(1, result.getGenres().size());
            assertEquals("FPS", result.getGenres().get(0).getName());
            assertEquals(1, result.getPlatforms().size());
            assertEquals("PS5", result.getPlatforms().get(0).getName());

            verify(gameRepository, times(1)).findById(1L);
            verify(gameRepository, times(1)).save(existing);
        }

        /**
         * PRZYPADEK NEGATYWNY – próba aktualizacji nieistniejącej gry → ResourceNotFoundException.
         */
        @Test
        @DisplayName("rzuca ResourceNotFoundException gdy gra do aktualizacji nie istnieje")
        void updateGame_shouldThrow_whenNotFound() {
            // given
            when(gameRepository.findById(99L)).thenReturn(Optional.empty());
            GameRequest request = buildRequest("Tytuł");

            // when / then
            assertThrows(
                    ResourceNotFoundException.class,
                    () -> gameService.updateGame(99L, request),
                    "Powinien zostać rzucony ResourceNotFoundException"
            );

            verify(gameRepository, never()).save(any());
        }
    }

    // ================================================================ deleteGame

    @Nested
    @DisplayName("deleteGame")
    class DeleteGame {

        /**
         * HAPPY PATH – istniejąca gra jest usuwana bez wyjątku.
         */
        @Test
        @DisplayName("usuwa grę gdy istnieje")
        void deleteGame_shouldDelete_whenFound() {
            // given
            Game mockGame = new Game();
            mockGame.setTitle("Dark Souls");
            setId(mockGame, 1L);

            when(gameRepository.findById(1L)).thenReturn(Optional.of(mockGame));

            // when / then
            assertDoesNotThrow(() -> gameService.deleteGame(1L),
                    "Usunięcie istniejącej gry nie powinno rzucać wyjątku");

            verify(gameRepository, times(1)).deleteById(1L);
        }

        /**
         * PRZYPADEK NEGATYWNY – próba usunięcia nieistniejącej gry → ResourceNotFoundException.
         */
        @Test
        @DisplayName("rzuca ResourceNotFoundException gdy gra nie istnieje")
        void deleteGame_shouldThrow_whenNotFound() {
            // given
            when(gameRepository.findById(99L)).thenReturn(Optional.empty());

            // when / then
            assertThrows(
                    ResourceNotFoundException.class,
                    () -> gameService.deleteGame(99L),
                    "Powinien zostać rzucony ResourceNotFoundException"
            );

            verify(gameRepository, never()).deleteById(any());
        }
    }
}