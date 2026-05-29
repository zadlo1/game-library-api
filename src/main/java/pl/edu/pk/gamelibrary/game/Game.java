package pl.edu.pk.gamelibrary.game;

import jakarta.persistence.*;
import pl.edu.pk.gamelibrary.genre.Genre;
import pl.edu.pk.gamelibrary.platform.Platform;
import pl.edu.pk.gamelibrary.review.RatingProfile;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "games")
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String description;

    @ManyToMany
    @JoinTable(
        name = "game_genres",
        joinColumns = @JoinColumn(name = "game_id"),
        inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private List<Genre> genres = new ArrayList<>();

    @ManyToMany
    @JoinTable(
        name = "game_platforms",
        joinColumns = @JoinColumn(name = "game_id"),
        inverseJoinColumns = @JoinColumn(name = "platform_id")
    )
    private List<Platform> platforms = new ArrayList<>();

    private Integer releaseYear;
    private String coverUrl;

    @Column(nullable = false)
    private boolean hasStory = true;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private RatingProfile defaultRatingProfile = RatingProfile.DEFAULT;

    public Game() {}

    public Long getId() { return id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public List<Genre> getGenres() { return genres; }
    public void setGenres(List<Genre> genres) { this.genres = genres != null ? genres : new ArrayList<>(); }

    public List<Platform> getPlatforms() { return platforms; }
    public void setPlatforms(List<Platform> platforms) { this.platforms = platforms != null ? platforms : new ArrayList<>(); }

    public Integer getReleaseYear() { return releaseYear; }
    public void setReleaseYear(Integer releaseYear) { this.releaseYear = releaseYear; }

    public String getCoverUrl() { return coverUrl; }
    public void setCoverUrl(String coverUrl) { this.coverUrl = coverUrl; }

    public boolean isHasStory() { return hasStory; }
    public void setHasStory(boolean hasStory) { this.hasStory = hasStory; }

    public RatingProfile getDefaultRatingProfile() { return defaultRatingProfile; }
    public void setDefaultRatingProfile(RatingProfile defaultRatingProfile) {
        this.defaultRatingProfile = defaultRatingProfile != null ? defaultRatingProfile : RatingProfile.DEFAULT;
    }
}
