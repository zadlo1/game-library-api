package pl.edu.pk.gamelibrary.events.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;
import pl.edu.pk.gamelibrary.events.ReviewCreatedEvent;
import pl.edu.pk.gamelibrary.events.ReviewDeletedEvent;

/**
 * Nasłuchuje na eventy recenzji i unieważnia cache statystyk.
 *
 * Używamy @TransactionalEventListener z fazą AFTER_COMMIT,
 * żeby cache był unieważniany dopiero gdy transakcja zapisu
 * recenzji faktycznie się powiedzie — nie wcześniej.
 */
@Component
public class ReviewEventListener {

    private static final Logger log = LoggerFactory.getLogger(ReviewEventListener.class);

    private final RatingStatsCache ratingStatsCache;

    public ReviewEventListener(RatingStatsCache ratingStatsCache) {
        this.ratingStatsCache = ratingStatsCache;
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void onReviewCreated(ReviewCreatedEvent event) {
        log.info("[EVENT] ReviewCreated — gra={}, recenzja={}, autor={}, ocena={}",
                event.gameId(), event.reviewId(), event.authorId(), event.overallScore());

        ratingStatsCache.invalidate(event.gameId());
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void onReviewDeleted(ReviewDeletedEvent event) {
        log.info("[EVENT] ReviewDeleted — gra={}, recenzja={}, autor={}",
                event.gameId(), event.reviewId(), event.authorId());

        ratingStatsCache.invalidate(event.gameId());
    }
}
