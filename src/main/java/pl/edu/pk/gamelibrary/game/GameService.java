package pl.edu.pk.gamelibrary.game;

import jakarta.transaction.Transactional;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import pl.edu.pk.gamelibrary.events.GameDeletedEvent;
import pl.edu.pk.gamelibrary.events.listener.RatingStatsCache;
import pl.edu.pk.gamelibrary.exception.ResourceNotFoundException;
import pl.edu.pk.gamelibrary.genre.Genre;
import pl.edu.pk.gamelibrary.genre.GenreRepository;
import pl.edu.pk.gamelibrary.game.dto.GameRequest;
import pl.edu.pk.gamelibrary.platform.Platform;
import pl.edu.pk.gamelibrary.platform.PlatformRepository;
import pl.edu.pk.gamelibrary.review.RatingProfile;
import pl.edu.pk.gamelibrary.review.ReviewRepository;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GameService {

    private final GameRepository gameRepository;
    private final ReviewRepository reviewRepository;
    private final ApplicationEventPublisher eventPublisher;
    private final RatingStatsCache ratingStatsCache;
    private final GenreRepository genreRepository;
    private final PlatformRepository platformRepository;

    private static final double BAYES_C = 5.0;
    private static final double BAYES_M = 7.0;

    public GameService(GameRepository gameRepository,
                       ReviewRepository reviewRepository,
                       ApplicationEventPublisher eventPublisher,
                       RatingStatsCache ratingStatsCache,
                       GenreRepository genreRepository,
                       PlatformRepository platformRepository) {
        this.gameRepository = gameRepository;
        this.reviewRepository = reviewRepository;
        this.eventPublisher = eventPublisher;
        this.ratingStatsCache = ratingStatsCache;
        this.genreRepository = genreRepository;
        this.platformRepository = platformRepository;
    }

    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

    public Page<Game> searchGames(GameSearchCriteria criteria, Pageable pageable) {
        String sortField = extractSortField(pageable);
        if ("rating".equalsIgnoreCase(sortField)) {
            return searchGamesSortedByRating(criteria, pageable);
        }
        return gameRepository.findAll(GameSpecifications.byCriteria(criteria), pageable);
    }

    public Map<Long, GameRatingStats> getAllRatingStats() {
        List<Object[]> rows = reviewRepository.findReviewStatsPerGame();
        Map<Long, GameRatingStats> map = new HashMap<>();
        for (Object[] row : rows) {
            Long gameId = ((Number) row[0]).longValue();
            long count   = ((Number) row[1]).longValue();
            double avg   = row[2] != null ? ((Number) row[2]).doubleValue() : 0.0;
            double bayesRaw = computeBayesian(count, avg);
            GameRatingStats stats = new GameRatingStats(count, round1(avg), round1(bayesRaw), bayesRaw);
            map.put(gameId, stats);
            ratingStatsCache.put(gameId, stats);
        }
        return map;
    }

    public GameRatingStats getRatingStatsForGame(Long gameId) {
        return ratingStatsCache.get(gameId).orElseGet(() -> {
            Map<Long, GameRatingStats> all = getAllRatingStats();
            return all.getOrDefault(gameId, GameRatingStats.empty());
        });
    }

    public Game getGameById(Long id) {
        return gameRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Gra", id));
    }

    @Transactional
    public Game createGame(GameRequest request) {
        Game game = new Game();
        game.setTitle(request.getTitle());
        game.setDescription(request.getDescription());
        game.setReleaseYear(request.getReleaseYear());
        game.setCoverUrl(request.getCoverUrl());
        if (request.getHasStory() != null) {
            game.setHasStory(request.getHasStory());
        }
        game.setDefaultRatingProfile(
            request.getDefaultRatingProfile() != null ? request.getDefaultRatingProfile() : RatingProfile.DEFAULT
        );
        game.setGenres(resolveGenres(request.getGenres()));
        game.setPlatforms(resolvePlatforms(request.getPlatforms()));
        return gameRepository.save(game);
    }

    @Transactional
    public Game updateGame(Long id, GameRequest request) {
        Game existing = getGameById(id);
        existing.setTitle(request.getTitle());
        existing.setDescription(request.getDescription());
        existing.setReleaseYear(request.getReleaseYear());
        existing.setCoverUrl(request.getCoverUrl());
        existing.setHasStory(request.getHasStory() != null ? request.getHasStory() : existing.isHasStory());
        existing.setDefaultRatingProfile(
            request.getDefaultRatingProfile() != null ? request.getDefaultRatingProfile() : existing.getDefaultRatingProfile()
        );
        existing.setGenres(resolveGenres(request.getGenres()));
        existing.setPlatforms(resolvePlatforms(request.getPlatforms()));
        return gameRepository.save(existing);
    }

    @Transactional
    public void deleteGame(Long id) {
        Game game = getGameById(id);
        eventPublisher.publishEvent(new GameDeletedEvent(game.getId(), game.getTitle()));
        gameRepository.deleteById(id);
    }

    // ──────────────────────────────────────────────
    // Helpers: resolve genre/platform names to entities (create if not exists)
    // ──────────────────────────────────────────────

    private List<Genre> resolveGenres(List<String> names) {
        if (names == null) return List.of();
        return names.stream().map(name ->
            genreRepository.findByNameIgnoreCase(name.trim())
                .orElseGet(() -> genreRepository.save(new Genre(name.trim())))
        ).toList();
    }

    private List<Platform> resolvePlatforms(List<String> names) {
        if (names == null) return List.of();
        return names.stream().map(name ->
            platformRepository.findByNameIgnoreCase(name.trim())
                .orElseGet(() -> platformRepository.save(new Platform(name.trim())))
        ).toList();
    }

    // ──────────────────────────────────────────────
    // Sortowanie po bayesian rating w Javie
    // ──────────────────────────────────────────────

    private Page<Game> searchGamesSortedByRating(GameSearchCriteria criteria, Pageable pageable) {
        Specification<Game> spec = GameSpecifications.byCriteria(criteria);
        List<Game> allGames = gameRepository.findAll(spec);
        Map<Long, GameRatingStats> statsMap = getAllRatingStats();

        Sort.Direction dir = extractSortDirection(pageable);
        Comparator<Game> comparator;
        if (dir == Sort.Direction.DESC) {
            comparator = Comparator.comparingInt(
                (Game g) -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getReviewCount() == 0 ? 1 : 0
            ).thenComparingDouble(
                (Game g) -> -statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getBayesianRatingRaw()
            );
        } else {
            comparator = Comparator.comparingInt(
                (Game g) -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getReviewCount() == 0 ? 1 : 0
            ).thenComparingDouble(
                g -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getBayesianRatingRaw()
            );
        }

        List<Game> sorted = allGames.stream().sorted(comparator).toList();

        int totalElements = sorted.size();
        int pageNum = pageable.getPageNumber();
        int pageSize = pageable.getPageSize();
        int from = Math.min(pageNum * pageSize, totalElements);
        int to   = Math.min(from + pageSize, totalElements);
        List<Game> pageContent = sorted.subList(from, to);

        return new PageImpl<>(pageContent, pageable, totalElements);
    }

    private static double computeBayesian(long n, double avg) {
        return (BAYES_C * BAYES_M + n * avg) / (BAYES_C + n);
    }

    private static double round1(double v) {
        return Math.round(v * 10.0) / 10.0;
    }

    private static String extractSortField(Pageable pageable) {
        for (Sort.Order order : pageable.getSort()) {
            return order.getProperty();
        }
        return "title";
    }

    private static Sort.Direction extractSortDirection(Pageable pageable) {
        for (Sort.Order order : pageable.getSort()) {
            return order.getDirection();
        }
        return Sort.Direction.DESC;
    }
}
