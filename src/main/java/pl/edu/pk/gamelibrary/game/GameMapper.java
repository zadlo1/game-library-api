package pl.edu.pk.gamelibrary.game;

import pl.edu.pk.gamelibrary.game.dto.GameRequest;
import pl.edu.pk.gamelibrary.game.dto.GameResponse;

import java.util.List;

public class GameMapper {

    public static GameResponse toResponse(Game g) {
        GameResponse res = new GameResponse();
        res.setId(g.getId());
        res.setTitle(g.getTitle());
        res.setDescription(g.getDescription());
        res.setGenres(g.getGenres().stream().map(genre -> genre.getName()).toList());
        res.setPlatforms(g.getPlatforms().stream().map(platform -> platform.getName()).toList());
        res.setReleaseYear(g.getReleaseYear());
        res.setCoverUrl(g.getCoverUrl());
        res.setHasStory(g.isHasStory());
        res.setDefaultRatingProfile(g.getDefaultRatingProfile());
        return res;
    }
}
