package pl.edu.pk.gamelibrary.game;

import jakarta.persistence.criteria.Join;
import org.springframework.data.jpa.domain.Specification;
import pl.edu.pk.gamelibrary.genre.Genre;
import pl.edu.pk.gamelibrary.platform.Platform;

public final class GameSpecifications {
    private GameSpecifications() {}

    public static Specification<Game> byCriteria(GameSearchCriteria c) {
        Specification<Game> spec = Specification.where(null);
        if (c == null) return spec;

        if (c.getTitle() != null && !c.getTitle().isBlank()) {
            String like = "%" + c.getTitle().trim().toLowerCase() + "%";
            spec = spec.and((root, q, cb) -> cb.like(cb.lower(root.get("title")), like));
        }
        if (c.getGenre() != null && !c.getGenre().isBlank()) {
            spec = spec.and((root, q, cb) -> {
                Join<Game, Genre> genresJoin = root.join("genres");
                return cb.equal(cb.lower(genresJoin.get("name")), c.getGenre().trim().toLowerCase());
            });
        }
        if (c.getPlatform() != null && !c.getPlatform().isBlank()) {
            spec = spec.and((root, q, cb) -> {
                Join<Game, Platform> platformsJoin = root.join("platforms");
                return cb.equal(cb.lower(platformsJoin.get("name")), c.getPlatform().trim().toLowerCase());
            });
        }
        if (c.getHasStory() != null) {
            spec = spec.and((root, q, cb) -> cb.equal(root.get("hasStory"), c.getHasStory()));
        }
        if (c.getReleaseYearFrom() != null) {
            spec = spec.and((root, q, cb) -> cb.greaterThanOrEqualTo(root.get("releaseYear"), c.getReleaseYearFrom()));
        }
        if (c.getReleaseYearTo() != null) {
            spec = spec.and((root, q, cb) -> cb.lessThanOrEqualTo(root.get("releaseYear"), c.getReleaseYearTo()));
        }
        return spec;
    }
}
