package pl.edu.pk.gamelibrary.library;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserGameRepository extends JpaRepository<UserGame, Long>, JpaSpecificationExecutor<UserGame> {
    Optional<UserGame> findByUserIdAndGameId(Long userId, Long gameId);
    boolean existsByUserIdAndGameId(Long userId, Long gameId);
    void deleteByUserIdAndGameId(Long userId, Long gameId);

    @Modifying
    @Query("DELETE FROM UserGame ug WHERE ug.game.id = :gameId")
    long deleteByGameId(@Param("gameId") Long gameId);
}

