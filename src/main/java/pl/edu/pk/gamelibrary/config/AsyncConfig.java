package pl.edu.pk.gamelibrary.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * Włącza obsługę @Async w całej aplikacji.
 *
 * Dzięki temu listenery zdarzeń oznaczone @Async mogą działać
 * w osobnym wątku i nie blokować wątku HTTP, który obsługuje żądanie.
 *
 * Aktualnie AuditEventListener i ReviewEventListener działają synchronicznie
 * (AFTER_COMMIT), ale @EnableAsync zostawia furtkę do łatwego przejścia
 * na asynchroniczne przetwarzanie gdy zajdzie taka potrzeba.
 */
@Configuration
@EnableAsync
public class AsyncConfig {
    // Spring Boot sam tworzy domyślny ThreadPoolTaskExecutor
    // z application.properties: spring.task.execution.*
}
