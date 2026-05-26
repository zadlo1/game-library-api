package pl.edu.pk.gamelibrary.events;

/**
 * Publikowany po pomyślnym zapisaniu nowej recenzji.
 */
public record ReviewCreatedEvent(Long gameId, Long reviewId, Long authorId, Double overallScore) {}
