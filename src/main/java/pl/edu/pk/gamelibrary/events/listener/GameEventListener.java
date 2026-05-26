package pl.edu.pk.gamelibrary.events.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;
import pl.edu.pk.gamelibrary.events.GameDeletedEvent;
import pl.edu.pk.gamelibrary.library.UserGameRepository;
import pl.edu.pk.gamelibrary.review.ReviewRepository;

/**
 * Nasłuchuje na GameDeletedEvent i sprząta powiązane dane.
 *
 * Dzięki temu GameService nie musi znać szczegółów LibraryService
 * ani ReviewService — każdy moduł sam reaguje na event i sprząta
 * swój własny stan.
 *
 * Propagation.REQUIRES_NEW — listener działa w nowej, osobnej transakcji
 * uruchomionej po commicie transakcji usuwającej grę (AFTER_COMMIT).
 * Spring wymaga REQUIRES_NEW lub NOT_SUPPORTED przy użyciu @Transactional
 * razem z @TransactionalEventListener.
 */
@Component
public class GameEventListener {

    private static final Logger log = LoggerFactory.getLogger(GameEventListener.class);

    private final ReviewRepository reviewRepository;
    private final UserGameRepository userGameRepository;
    private final RatingStatsCache ratingStatsCache;

    public GameEventListener(ReviewRepository reviewRepository,
                             UserGameRepository userGameRepository,
                             RatingStatsCache ratingStatsCache) {
        this.reviewRepository = reviewRepository;
        this.userGameRepository = userGameRepository;
        this.ratingStatsCache = ratingStatsCache;
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void onGameDeleted(GameDeletedEvent event) {
        log.info("[EVENT] GameDeleted — gra={} ('{}') — czyszczenie powiązanych danych",
                event.gameId(), event.gameTitle());

        long deletedReviews = reviewRepository.deleteByGameId(event.gameId());
        long deletedLibraryEntries = userGameRepository.deleteByGameId(event.gameId());

        ratingStatsCache.invalidate(event.gameId());

        log.info("[EVENT] GameDeleted — usunięto {} recenzji i {} wpisów z bibliotek dla gry id={}",
                deletedReviews, deletedLibraryEntries, event.gameId());
    }
}
