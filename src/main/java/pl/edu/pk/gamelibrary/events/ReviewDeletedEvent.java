package pl.edu.pk.gamelibrary.events;

/**
 * Publikowany po pomyślnym usunięciu recenzji.
 */
public record ReviewDeletedEvent(Long gameId, Long reviewId, Long authorId) {}
