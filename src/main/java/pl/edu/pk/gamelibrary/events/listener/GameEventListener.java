package pl.edu.pk.gamelibrary.events.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;
import pl.edu.pk.gamelibrary.events.GameDeletedEvent;

/**
 * Nasłuchuje na GameDeletedEvent i sprząta powiązane dane.
 *
 * Recenzje i wpisy UserGame są automatycznie usuwane kaskadowo
 * przez JPA dzięki CascadeType.ALL w encji Game.
 * Ten listener tylko unieważnia cache statystyk ratingowych.
 */
@Component
public class GameEventListener {

    private static final Logger log = LoggerFactory.getLogger(GameEventListener.class);

    private final RatingStatsCache ratingStatsCache;

    public GameEventListener(RatingStatsCache ratingStatsCache) {
        this.ratingStatsCache = ratingStatsCache;
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void onGameDeleted(GameDeletedEvent event) {
        log.info("[EVENT] GameDeleted — gra={} ('{}') — czyszczenie cache",
                event.gameId(), event.gameTitle());

        ratingStatsCache.invalidate(event.gameId());

        log.info("[EVENT] GameDeleted — unieważniono cache dla gry id={} (powiązane recenzje i wpisy z bibliotek usunięto kaskadowo)",
                event.gameId());
    }
}
