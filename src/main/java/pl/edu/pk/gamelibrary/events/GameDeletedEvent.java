package pl.edu.pk.gamelibrary.events;

/**
 * Publikowany po pomyślnym usunięciu gry przez admina.
 * Pozwala modułom Library i Review posprzątać po sobie
 * bez bezpośredniej zależności od GameService.
 */
public record GameDeletedEvent(Long gameId, String gameTitle) {}
