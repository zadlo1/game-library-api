package pl.edu.pk.gamelibrary.events.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import pl.edu.pk.gamelibrary.game.GameRatingStats;

import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Prosta pamięć podręczna statystyk ratingowych per gra.
 *
 * Zamiast przeliczać Bayesian average przy każdym GET /games,
 * trzymamy wynik w mapie i unieważniamy go gdy pojawi się
 * ReviewCreatedEvent lub ReviewDeletedEvent dla danej gry.
 *
 * Klucz: gameId
 */
@Component
public class RatingStatsCache {

    private static final Logger log = LoggerFactory.getLogger(RatingStatsCache.class);

    private final Map<Long, GameRatingStats> cache = new ConcurrentHashMap<>();

    public Optional<GameRatingStats> get(Long gameId) {
        return Optional.ofNullable(cache.get(gameId));
    }

    public void put(Long gameId, GameRatingStats stats) {
        cache.put(gameId, stats);
    }

    public void invalidate(Long gameId) {
        if (cache.remove(gameId) != null) {
            log.debug("Cache statystyk unieważniony dla gry id={}", gameId);
        }
    }

    public void invalidateAll() {
        cache.clear();
        log.debug("Cache statystyk wyczyszczony całkowicie");
    }

    public int size() {
        return cache.size();
    }
}
