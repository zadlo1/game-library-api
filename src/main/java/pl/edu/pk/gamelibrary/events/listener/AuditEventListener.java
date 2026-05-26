package pl.edu.pk.gamelibrary.events.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;
import pl.edu.pk.gamelibrary.events.GameDeletedEvent;
import pl.edu.pk.gamelibrary.events.ReviewCreatedEvent;
import pl.edu.pk.gamelibrary.events.ReviewDeletedEvent;
import pl.edu.pk.gamelibrary.events.UserRegisteredEvent;

/**
 * Centralny audit log — loguje każde zdarzenie domenowe.
 *
 * W przyszłości można tu podpiąć zapis do tabeli AuditLog w bazie
 * lub wysyłkę do zewnętrznego systemu (ELK, Splunk itp.)
 * bez modyfikacji żadnego serwisu.
 */
@Component
public class AuditEventListener {

    private static final Logger log = LoggerFactory.getLogger(AuditEventListener.class);

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void auditReviewCreated(ReviewCreatedEvent event) {
        log.info("[AUDIT] Nowa recenzja: recenzja={}, gra={}, autor={}, ocena={}",
                event.reviewId(), event.gameId(), event.authorId(), event.overallScore());
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void auditReviewDeleted(ReviewDeletedEvent event) {
        log.info("[AUDIT] Usunięta recenzja: recenzja={}, gra={}, autor={}",
                event.reviewId(), event.gameId(), event.authorId());
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void auditGameDeleted(GameDeletedEvent event) {
        log.info("[AUDIT] Usunięta gra: id={}, tytuł='{}'",
                event.gameId(), event.gameTitle());
    }

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void auditUserRegistered(UserRegisteredEvent event) {
        log.info("[AUDIT] Nowy użytkownik: id={}, login='{}', rola={}",
                event.userId(), event.username(), event.role());
    }
}
