-- Uzytkownicy (tabela: app_users)
INSERT INTO app_users (username, password, role)
VALUES (
           'admin',
           '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS',
           'ADMIN'
       );
INSERT INTO app_users (username, password, role) VALUES ('john_doe', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('jane_smith', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('mike_wilson', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('sarah_johnson', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('alex_brown', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('emily_davis', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');

-- Gry (tabela: games)
INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Witcher 3: Wild Hunt', 'Epic RPG set in a fantasy world where you play as Geralt of Rivia.', 2015, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cyberpunk 2077', 'Futuristic action RPG set in Night City, a metropolis obsessed with power and body modification.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Red Dead Redemption 2', 'Epic story about a gang of outlaws fleeing from the law in Wild West America.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('God of War', 'Kratos and his son Atreus embark on a dangerous journey through Norse lands.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Elden Ring', 'Souls-like RPG created by FromSoftware in collaboration with George R.R. Martin.', 2022, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Minecraft', 'Iconic sandbox game allowing you to build and explore infinite worlds.', 2011, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Grand Theft Auto V', 'Action game set in fictional Los Santos, an equivalent of Los Angeles.', 2013, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Last of Us Part II', 'Continuation of the groundbreaking survival story in a zombie-infested world.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Hades', 'Roguelike dungeon crawler set in the Greek mythological world.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Portal 2', 'Brilliant puzzle game using portal mechanics.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dark Souls III', 'Third installment of the iconic souls-like series known for high difficulty.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Sekiro: Shadows Die Twice', 'Action game set in feudal Japan, featuring a unique combat system.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Celeste', 'Challenging 2D platformer with a touching story about fighting depression.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Hollow Knight', 'Beautifully drawn metroidvania game set in an underground kingdom of insects.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Stardew Valley', 'Farm life simulation with RPG and social elements.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('BioShock Infinite', 'FPS with RPG elements set in the flying city of Columbia.', 2013, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mass Effect 2', 'Second part of the iconic space opera RPG.', 2010, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Elder Scrolls V: Skyrim', 'Epic open-world RPG set in the land of Skyrim.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Doom Eternal', 'Continuation of the iconic FPS with intense action.', 2020, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Bloodborne', 'Gothic horror souls-like from FromSoftware.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Persona 5 Royal', 'Expanded JRPG combining student life with battles in the metaverse.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Final Fantasy VII Remake', 'Remake of the iconic JRPG from 1997.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Resident Evil Village', 'Survival horror continuing RE7.', 2021, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Death Stranding', 'Unique game from Hideo Kojima about a delivery man in a post-apocalyptic world.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Control', 'Supernatural action game at the Federal Bureau of Control.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Disco Elysium', 'Revolutionary detective RPG with a unique dialogue system.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Undertale', 'Indie RPG where you can spare every enemy.', 2015, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Horizon Zero Dawn', 'Post-apocalyptic world inhabited by mechanical dinosaurs.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ghost of Tsushima', 'Samurai story set in feudal Japan.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Spider-Man', 'Spider-Man game from Insomniac Games.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Batman: Arkham City', 'Second installment of the Arkham series about the Dark Knight.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Metal Gear Solid V', 'Tactical stealth action game from Hideo Kojima.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Assassins Creed Valhalla', 'Viking-themed game in the Assassins Creed series.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Far Cry 5', 'Open-world FPS set in Montana.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dishonored 2', 'Stealth-action sequel with supernatural powers.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Prey', 'Sci-fi FPS on a space station.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Wolfenstein II', 'Alternative history where Nazis won WWII.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dying Light 2', 'Parkour and zombies in a post-apocalyptic city.', 2022, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Days Gone', 'Open-world zombie survival game.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Monster Hunter World', 'Hunt gigantic monsters solo or in co-op.', 2018, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Nioh 2', 'Souls-like set in feudal Japan.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Devil May Cry 5', 'Stylish hack and slash with three playable characters.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Bayonetta 2', 'Continuation of the stylish action game.', 2014, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('NieR: Automata', 'Philosophical RPG about androids fighting machines.', 2017, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Outer Wilds', 'Exploration adventure game with a time loop.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Subnautica', 'Survival on an alien ocean planet.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Return of the Obra Dinn', 'Detective puzzle game with unique graphics.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('What Remains of Edith Finch', 'Narrative adventure game about a cursed family.', 2017, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Firewatch', 'First-person adventure in the Wyoming wilderness.', 2016, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('A Plague Tale: Innocence', 'Adventure game set in medieval France during a plague.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ori and the Blind Forest', 'Beautiful platformer with an emotional story.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ori and the Will of the Wisps', 'Continuation of Ori with improved mechanics.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cuphead', 'Difficult run and gun in 1930s cartoon style.', 2017, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dead Cells', 'Roguelike metroidvania with dynamic combat.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Enter the Gungeon', 'Bullet hell roguelike dungeon crawler.', 2016, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Slay the Spire', 'Roguelike deck-building card game.', 2019, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Into the Breach', 'Turn-based strategy about mechs fighting aliens.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('XCOM 2', 'Turn-based tactical strategy about fighting alien invasion.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Civilization VI', 'Turn-based 4X strategy about building civilizations.', 2016, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Total War: Warhammer II', 'RTS/turn-based strategy in the Warhammer universe.', 2017, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('StarCraft II', 'Iconic real-time sci-fi strategy.', 2010, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Age of Empires IV', 'Return of the iconic RTS series.', 2021, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Factorio', 'Game about building automated factories.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('RimWorld', 'Colony simulator with generated stories.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cities: Skylines', 'City building simulator.', 2015, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Euro Truck Simulator 2', 'Realistic truck driving simulator.', 2012, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Microsoft Flight Simulator', 'Photorealistic flight simulator.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Kerbal Space Program', 'Rocket building and space exploration simulator.', 2015, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Sims 4', 'Life simulator with wide customization.', 2014, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Animal Crossing: New Horizons', 'Relaxing island life simulation.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Rocket League', 'Soccer with cars.', 2015, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('FIFA 23', 'Soccer simulator from EA Sports.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('NBA 2K23', 'Basketball simulator.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Forza Horizon 5', 'Open-world racing in Mexico.', 2021, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Gran Turismo 7', 'Realistic racing simulator.', 2022, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('F1 2022', 'Official Formula 1 simulator.', 2022, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mario Kart 8 Deluxe', 'Arcade racing with Nintendo characters.', 2017, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Super Mario Odyssey', '3D platformer with Mario and his cap Cappy.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Legend of Zelda: Breath of the Wild', 'Open-world adventure in Zelda universe.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Legend of Zelda: Tears of the Kingdom', 'Continuation of Breath of the Wild.', 2023, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Super Smash Bros. Ultimate', 'Crossover fighting game with Nintendo characters and more.', 2018, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Street Fighter V', 'Classic 2D fighting game.', 2016, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Tekken 7', 'Popular 3D fighting game series.', 2017, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mortal Kombat 11', 'Brutal fighting game with fatalities.', 2019, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Guilty Gear Strive', 'Anime fighting game with beautiful graphics.', 2021, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dragon Ball FighterZ', '2D fighting game in Dragon Ball universe.', 2018, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Overwatch 2', 'Team-based hero shooter.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Apex Legends', 'Battle royale with legends having unique abilities.', 2019, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Fortnite', 'Most popular battle royale with building.', 2017, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Call of Duty: Modern Warfare II', 'Latest installment in Call of Duty series.', 2022, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Battlefield 2042', 'Large-scale FPS with environmental destruction.', 2021, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Counter-Strike: Global Offensive', 'Iconic tactical FPS.', 2012, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Valorant', 'Tactical FPS with agents from Riot Games.', 2020, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Rainbow Six Siege', 'Tactical FPS with operators.', 2015, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Destiny 2', 'Sci-fi MMO FPS from Bungie.', 2017, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Warframe', 'Free-to-play cooperative sci-fi shooter.', 2013, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('League of Legends', 'Most popular MOBA in the world.', 2009, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dota 2', 'Competitive MOBA from Valve.', 2013, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('World of Warcraft', 'Iconic MMORPG in Warcraft universe.', 2004, null, true, 'MULTIPLAYER');

-- Gatunki (tabela: genres)
INSERT INTO genres (id, name) VALUES (1, 'RPG');
INSERT INTO genres (id, name) VALUES (2, 'Action-Adventure');
INSERT INTO genres (id, name) VALUES (3, 'Action RPG');
INSERT INTO genres (id, name) VALUES (4, 'Sandbox');
INSERT INTO genres (id, name) VALUES (5, 'Roguelike');
INSERT INTO genres (id, name) VALUES (6, 'Puzzle');
INSERT INTO genres (id, name) VALUES (7, 'Platformer');
INSERT INTO genres (id, name) VALUES (8, 'Metroidvania');
INSERT INTO genres (id, name) VALUES (9, 'Simulation');
INSERT INTO genres (id, name) VALUES (10, 'FPS');
INSERT INTO genres (id, name) VALUES (11, 'JRPG');
INSERT INTO genres (id, name) VALUES (12, 'Survival Horror');
INSERT INTO genres (id, name) VALUES (13, 'Action');
INSERT INTO genres (id, name) VALUES (14, 'Stealth');
INSERT INTO genres (id, name) VALUES (15, 'Hack and Slash');
INSERT INTO genres (id, name) VALUES (16, 'Adventure');
INSERT INTO genres (id, name) VALUES (17, 'Survival');
INSERT INTO genres (id, name) VALUES (18, 'Run and Gun');
INSERT INTO genres (id, name) VALUES (19, 'Strategy');
INSERT INTO genres (id, name) VALUES (20, 'RTS');
INSERT INTO genres (id, name) VALUES (21, 'Sports');
INSERT INTO genres (id, name) VALUES (22, 'Racing');
INSERT INTO genres (id, name) VALUES (23, 'Fighting');
INSERT INTO genres (id, name) VALUES (24, 'Battle Royale');
INSERT INTO genres (id, name) VALUES (25, 'TPS');
INSERT INTO genres (id, name) VALUES (26, 'MOBA');
INSERT INTO genres (id, name) VALUES (27, 'MMORPG');

-- Platformy (tabela: platforms)
INSERT INTO platforms (id, name) VALUES (1, 'PC');
INSERT INTO platforms (id, name) VALUES (2, 'PlayStation 4');
INSERT INTO platforms (id, name) VALUES (3, 'Xbox One');
INSERT INTO platforms (id, name) VALUES (4, 'Nintendo Switch');
INSERT INTO platforms (id, name) VALUES (5, 'PlayStation 5');
INSERT INTO platforms (id, name) VALUES (6, 'Xbox Series X');
INSERT INTO platforms (id, name) VALUES (7, 'Mobile');
INSERT INTO platforms (id, name) VALUES (8, 'PlayStation 3');
INSERT INTO platforms (id, name) VALUES (9, 'Xbox 360');
INSERT INTO platforms (id, name) VALUES (10, 'Wii U');

-- Powiązania gra <-> gatunek (tabela: game_genres)
INSERT INTO game_genres (game_id, genre_id) VALUES (1, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (2, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (3, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (4, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (5, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (6, 4);
INSERT INTO game_genres (game_id, genre_id) VALUES (7, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (8, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (9, 5);
INSERT INTO game_genres (game_id, genre_id) VALUES (10, 6);
INSERT INTO game_genres (game_id, genre_id) VALUES (11, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (12, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (13, 7);
INSERT INTO game_genres (game_id, genre_id) VALUES (14, 8);
INSERT INTO game_genres (game_id, genre_id) VALUES (15, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (16, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (17, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (18, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (19, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (20, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (21, 11);
INSERT INTO game_genres (game_id, genre_id) VALUES (22, 11);
INSERT INTO game_genres (game_id, genre_id) VALUES (23, 12);
INSERT INTO game_genres (game_id, genre_id) VALUES (24, 13);
INSERT INTO game_genres (game_id, genre_id) VALUES (25, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (26, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (27, 1);
INSERT INTO game_genres (game_id, genre_id) VALUES (28, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (29, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (30, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (31, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (32, 14);
INSERT INTO game_genres (game_id, genre_id) VALUES (33, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (34, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (35, 14);
INSERT INTO game_genres (game_id, genre_id) VALUES (36, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (37, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (38, 12);
INSERT INTO game_genres (game_id, genre_id) VALUES (39, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (40, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (41, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (42, 15);
INSERT INTO game_genres (game_id, genre_id) VALUES (43, 15);
INSERT INTO game_genres (game_id, genre_id) VALUES (44, 3);
INSERT INTO game_genres (game_id, genre_id) VALUES (45, 16);
INSERT INTO game_genres (game_id, genre_id) VALUES (46, 17);
INSERT INTO game_genres (game_id, genre_id) VALUES (47, 6);
INSERT INTO game_genres (game_id, genre_id) VALUES (48, 16);
INSERT INTO game_genres (game_id, genre_id) VALUES (49, 16);
INSERT INTO game_genres (game_id, genre_id) VALUES (50, 16);
INSERT INTO game_genres (game_id, genre_id) VALUES (51, 8);
INSERT INTO game_genres (game_id, genre_id) VALUES (52, 8);
INSERT INTO game_genres (game_id, genre_id) VALUES (53, 18);
INSERT INTO game_genres (game_id, genre_id) VALUES (54, 5);
INSERT INTO game_genres (game_id, genre_id) VALUES (55, 5);
INSERT INTO game_genres (game_id, genre_id) VALUES (56, 5);
INSERT INTO game_genres (game_id, genre_id) VALUES (57, 19);
INSERT INTO game_genres (game_id, genre_id) VALUES (58, 19);
INSERT INTO game_genres (game_id, genre_id) VALUES (59, 19);
INSERT INTO game_genres (game_id, genre_id) VALUES (60, 20);
INSERT INTO game_genres (game_id, genre_id) VALUES (61, 20);
INSERT INTO game_genres (game_id, genre_id) VALUES (62, 20);
INSERT INTO game_genres (game_id, genre_id) VALUES (63, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (64, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (65, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (66, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (67, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (68, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (69, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (70, 9);
INSERT INTO game_genres (game_id, genre_id) VALUES (71, 21);
INSERT INTO game_genres (game_id, genre_id) VALUES (72, 21);
INSERT INTO game_genres (game_id, genre_id) VALUES (73, 21);
INSERT INTO game_genres (game_id, genre_id) VALUES (74, 22);
INSERT INTO game_genres (game_id, genre_id) VALUES (75, 22);
INSERT INTO game_genres (game_id, genre_id) VALUES (76, 22);
INSERT INTO game_genres (game_id, genre_id) VALUES (77, 22);
INSERT INTO game_genres (game_id, genre_id) VALUES (78, 7);
INSERT INTO game_genres (game_id, genre_id) VALUES (79, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (80, 2);
INSERT INTO game_genres (game_id, genre_id) VALUES (81, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (82, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (83, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (84, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (85, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (86, 23);
INSERT INTO game_genres (game_id, genre_id) VALUES (87, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (88, 24);
INSERT INTO game_genres (game_id, genre_id) VALUES (89, 24);
INSERT INTO game_genres (game_id, genre_id) VALUES (90, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (91, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (92, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (93, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (94, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (95, 10);
INSERT INTO game_genres (game_id, genre_id) VALUES (96, 25);
INSERT INTO game_genres (game_id, genre_id) VALUES (97, 26);
INSERT INTO game_genres (game_id, genre_id) VALUES (98, 26);
INSERT INTO game_genres (game_id, genre_id) VALUES (99, 27);

-- Powiązania gra <-> platforma (tabela: game_platforms)
INSERT INTO game_platforms (game_id, platform_id) VALUES (1, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (1, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (1, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (1, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (2, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (2, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (2, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (3, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (3, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (3, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (4, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (4, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (4, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (5, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (5, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (5, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (6, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (6, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (6, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (6, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (6, 7);
INSERT INTO game_platforms (game_id, platform_id) VALUES (7, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (7, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (7, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (8, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (8, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (9, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (9, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (9, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (9, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (10, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (10, 8);
INSERT INTO game_platforms (game_id, platform_id) VALUES (10, 9);
INSERT INTO game_platforms (game_id, platform_id) VALUES (11, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (11, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (11, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (12, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (12, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (12, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (13, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (13, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (13, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (14, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (14, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (14, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (15, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (15, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (15, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (15, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (16, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (16, 8);
INSERT INTO game_platforms (game_id, platform_id) VALUES (16, 9);
INSERT INTO game_platforms (game_id, platform_id) VALUES (17, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (17, 8);
INSERT INTO game_platforms (game_id, platform_id) VALUES (17, 9);
INSERT INTO game_platforms (game_id, platform_id) VALUES (18, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (18, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (18, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (18, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (19, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (19, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (19, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (19, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (20, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (21, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (21, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (21, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (21, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (22, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (22, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (22, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (23, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (23, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (23, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (24, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (24, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (24, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (25, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (25, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (25, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (26, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (26, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (26, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (26, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (27, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (27, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (27, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (28, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (28, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (28, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (29, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (29, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (30, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (30, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (31, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (31, 8);
INSERT INTO game_platforms (game_id, platform_id) VALUES (31, 9);
INSERT INTO game_platforms (game_id, platform_id) VALUES (32, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (32, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (32, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (33, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (33, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (33, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (34, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (34, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (34, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (35, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (35, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (35, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (36, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (36, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (36, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (37, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (37, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (37, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (38, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (38, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (38, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (39, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (39, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (40, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (40, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (40, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (41, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (41, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (41, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (42, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (42, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (42, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (43, 10);
INSERT INTO game_platforms (game_id, platform_id) VALUES (43, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (44, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (44, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (44, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (45, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (45, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (45, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (46, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (46, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (46, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (46, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (47, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (47, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (47, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (47, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (48, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (48, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (48, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (49, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (49, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (49, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (49, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (50, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (50, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (50, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (51, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (51, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (51, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (52, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (52, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (52, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (53, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (53, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (53, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (53, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (54, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (54, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (54, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (54, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (55, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (55, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (55, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (55, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (56, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (56, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (56, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (56, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (57, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (57, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (58, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (58, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (58, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (59, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (59, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (59, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (59, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (60, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (61, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (62, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (63, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (64, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (65, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (65, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (65, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (65, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (66, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (67, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (67, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (68, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (68, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (68, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (69, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (69, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (69, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (70, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (71, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (71, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (71, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (71, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (72, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (72, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (72, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (72, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (73, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (73, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (73, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (74, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (74, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (75, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (76, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (76, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (76, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (77, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (78, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (79, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (80, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (81, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (82, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (82, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (83, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (83, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (83, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (84, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (84, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (84, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (84, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (85, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (85, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (85, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (86, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (86, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (86, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (86, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (87, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (87, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (87, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (88, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (88, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (88, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (88, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (89, 7);
INSERT INTO game_platforms (game_id, platform_id) VALUES (90, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (90, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (90, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (91, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (91, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (91, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (92, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (93, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (94, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (94, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (94, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (95, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (95, 5);
INSERT INTO game_platforms (game_id, platform_id) VALUES (95, 6);
INSERT INTO game_platforms (game_id, platform_id) VALUES (96, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (96, 2);
INSERT INTO game_platforms (game_id, platform_id) VALUES (96, 3);
INSERT INTO game_platforms (game_id, platform_id) VALUES (96, 4);
INSERT INTO game_platforms (game_id, platform_id) VALUES (97, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (98, 1);
INSERT INTO game_platforms (game_id, platform_id) VALUES (99, 1);

-- Recenzje (tabela: reviews)
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 6, 'Świetna gra, polecam', 'Gameplay jest płynny i satysfakcjonujący.', 10, 10, 10, 9, 8, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 1, 'Dobra na kilka wieczorów', 'Muzyka doskonale buduje klimat.', 9, 9, 8, 10, 8, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 7, 'Technicznie niedopracowana', 'Muzyka doskonale buduje klimat.', 9, 10, 10, 10, 8, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 3, 'Warto zagrać', 'Grafika robi wrażenie, szczególnie oświetlenie.', 9, 8, 10, 8, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 5, 'Dobra oprawa, słaba fabuła', 'Muzyka doskonale buduje klimat.', 10, 10, 10, 10, 10, 10.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 4, 'Arcydzieło gatunku', 'Mechaniki walki są satysfakcjonujące.', 8, 9, 10, 9, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 2, 'Wciągający gameplay', 'Gameplay jest płynny i satysfakcjonujący.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 4, 'Niesamowite doświadczenie', 'Regrywalność na wysokim poziomie.', 7, 8, 10, 9, 9, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 3, 'Dobra na kilka wieczorów', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 8, 9, 10, 8.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 7, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 9, 9, 9, 7, 7, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 6, 'Niezapomniana przygoda', 'Można by poprawić optymalizację.', 8, 7, 10, 8, 9, 8.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 1, 'Dobra na kilka wieczorów', 'Regrywalność na wysokim poziomie.', 8, 9, 8, 7, 7, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 2, 'Niesamowite doświadczenie', 'Regrywalność na wysokim poziomie.', 7, 8, 9, 7, 8, 7.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 5, 'Niezapomniana przygoda', 'Muzyka doskonale buduje klimat.', 8, 9, 9, 7, 7, 8.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 5, 'Dobra na kilka wieczorów', 'Świat przedstawiony jest żywy i ciekawy.', 10, 10, 8, 10, 10, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 1, 'Technicznie niedopracowana', 'Trudna krzywa uczenia, ale warta wysiłku.', 9, 10, 8, 9, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 4, 'Niezapomniana przygoda', 'Fabuła wciąga od pierwszych minut.', 10, 10, 10, 8, 10, 9.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 7, 'Genialna narracja', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 10, 9, 9, 9, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 3, 'Dobra oprawa, słaba fabuła', 'Dialogi napisane z humorem i sercem.', 10, 8, 9, 10, 8, 9.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 2, 'Technicznie niedopracowana', 'Można by poprawić optymalizację.', 10, 9, 9, 8, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 6, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 10, 10, 10, 10, 8, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 3, 'Arcydzieło gatunku', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 10, 9, 9, 10, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 5, 'Technicznie niedopracowana', 'Nie spełnił moich oczekiwań.', 8, 8, 10, 8, 10, 8.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 6, 'Solidna produkcja', 'Nie spełnił moich oczekiwań.', 8, 8, 8, 10, 9, 8.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 4, 'Arcydzieło gatunku', 'Świat przedstawiony jest żywy i ciekawy.', 9, 10, 10, 10, 10, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 1, 'Rozczarowanie roku', 'Można by poprawić optymalizację.', 9, 9, 8, 9, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 7, 'Technicznie niedopracowana', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 8, 10, 8, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 2, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 10, 8, 9, 8, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 4, 'Arcydzieło gatunku', 'Polecam każdemu fanowi gatunku.', 10, 9, 8, 10, 8, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 2, 'Świetna gra, polecam', 'Muzyka doskonale buduje klimat.', 9, 9, 10, 8, 10, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 1, 'Genialna narracja', 'Regrywalność na wysokim poziomie.', 9, 10, 9, 10, 9, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 7, 'Technicznie niedopracowana', 'Regrywalność na wysokim poziomie.', 10, 9, 8, 8, 8, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 3, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 5, 'Wciągający gameplay', 'Kilkadziesiąt godzin świetnej zabawy.', 8, 9, 10, 8, 8, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 6, 'Warto zagrać', 'Muzyka doskonale buduje klimat.', 9, 10, 10, 8, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 6, 'Genialna narracja', 'Trudna krzywa uczenia, ale warta wysiłku.', 8, 9, 10, 9, 8, 8.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 5, 'Arcydzieło gatunku', 'Regrywalność na wysokim poziomie.', 8, 9, 10, 8, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 7, 'Niesamowite doświadczenie', 'Można by poprawić optymalizację.', 8, 10, 10, 9, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 3, 'Świetna gra, polecam', 'Nie spełnił moich oczekiwań.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 2, 'Warto zagrać', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 8, 10, 8, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 1, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 4, 'Warto zagrać', 'Nie spełnił moich oczekiwań.', 10, 8, 9, 10, 10, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 4, 'Dobra oprawa, słaba fabuła', 'Mechaniki walki są satysfakcjonujące.', 8, 9, 9, 8, 9, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 3, 'Niesamowite doświadczenie', 'Gra zachwyca oprawą i fabułą.', 10, 9, 10, 8, 9, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 1, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 5, 'Moja ulubiona gra', 'Mechaniki walki są satysfakcjonujące.', 8, 8, 10, 9, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 2, 'Dobra oprawa, słaba fabuła', 'Muzyka doskonale buduje klimat.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 7, 'Wciągający gameplay', 'Mechaniki walki są satysfakcjonujące.', 7, 10, 8, 10, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 6, 'Wciągający gameplay', 'Można by poprawić optymalizację.', 10, 8, 10, 10, 8, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 2, 'Solidna produkcja', 'Grafika robi wrażenie, szczególnie oświetlenie.', 8, 9, 9, 10, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 7, 'Warto zagrać', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 9, 10, 10, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 4, 'Rozczarowanie roku', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 10, 9, 9, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 3, 'Moja ulubiona gra', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 10, 9, 10, 9.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 6, 'Technicznie niedopracowana', 'Mechaniki walki są satysfakcjonujące.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 1, 'Moja ulubiona gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 9, 10, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 5, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 10, 9, 10, 10, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 6, 'Świetna gra, polecam', 'Fabuła wciąga od pierwszych minut.', 10, 10, 10, 10, 9, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 3, 'Przeciętna gra', 'Nie spełnił moich oczekiwań.', 9, 9, 10, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 5, 'Warto zagrać', 'Fabuła wciąga od pierwszych minut.', 9, 9, 10, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 2, 'Niezapomniana przygoda', 'Fabuła wciąga od pierwszych minut.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 1, 'Wciągający gameplay', 'Świat przedstawiony jest żywy i ciekawy.', 9, 9, 8, 9, 9, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 4, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 8, 9, 10, 10, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 7, 'Warto zagrać', 'Świat przedstawiony jest żywy i ciekawy.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 4, 'Dobra na kilka wieczorów', 'Jeden z lepszych tytułów dekady.', 10, 8, 8, 9, 9, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 2, 'Rozczarowanie roku', 'Dialogi napisane z humorem i sercem.', 8, 10, 9, 10, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 6, 'Genialna narracja', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 8, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 7, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 10, 8, 10, 8, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 1, 'Niesamowite doświadczenie', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 8, 9, 8, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 3, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 9, 8, 8, 8, 9, 8.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 1, 'Genialna narracja', 'Muzyka doskonale buduje klimat.', 10, 10, 9, 9, 8, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 2, 'Moja ulubiona gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 10, 9, 9, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 4, 'Niezapomniana przygoda', 'Świat przedstawiony jest żywy i ciekawy.', 8, 8, 9, 9, 8, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 5, 'Świetna gra, polecam', 'Trudna krzywa uczenia, ale warta wysiłku.', 9, 8, 9, 10, 8, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 3, 'Przeciętna gra', 'Polecam każdemu fanowi gatunku.', 9, 9, 8, 8, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 7, 'Rozczarowanie roku', 'Fabuła wciąga od pierwszych minut.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 7, 'Niezapomniana przygoda', 'Gra zachwyca oprawą i fabułą.', 10, 8, 10, 8, 8, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 4, 'Niesamowite doświadczenie', 'Można by poprawić optymalizację.', 10, 10, 8, 8, 7, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 3, 'Niesamowite doświadczenie', 'Jeden z lepszych tytułów dekady.', 9, 9, 8, 10, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 1, 'Warto zagrać', 'Jeden z lepszych tytułów dekady.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 2, 'Technicznie niedopracowana', 'Kilkadziesiąt godzin świetnej zabawy.', 7, 8, 9, 9, 10, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 6, 'Wciągający gameplay', 'Nie spełnił moich oczekiwań.', 8, 9, 9, 10, 8, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 5, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 10, 8, 10, 9, 8, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 1, 'Niesamowite doświadczenie', 'Mechaniki walki są satysfakcjonujące.', 9, 9, 10, 8, 9, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 7, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 9, 10, 9, 10, 10, 9.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 6, 'Solidna produkcja', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 9, 9, 10, 8, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 2, 'Przeciętna gra', 'Dialogi napisane z humorem i sercem.', 9, 10, 9, 9, 10, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 3, 'Moja ulubiona gra', 'Mechaniki walki są satysfakcjonujące.', 9, 9, 9, 8, 8, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (10, 3, 'Genialna narracja', 'Kilkadziesiąt godzin świetnej zabawy.', 8, 10, 9, 10, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (10, 5, 'Arcydzieło gatunku', 'Muzyka doskonale buduje klimat.', 10, 10, 10, 9, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (6, 6, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 9, 10, 10, NULL, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (27, 6, 'Technicznie niedopracowana', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 10, 9, 9, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 3, 'Solidna produkcja', 'Gameplay jest płynny i satysfakcjonujący.', 7, 7, 8, 8, 9, 7.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 1, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 8, 7, 7, 8, 7, 7.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 5, 'Genialna narracja', 'Można by poprawić optymalizację.', 6, 6, 7, 8, 9, 7.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 2, 'Świetna gra, polecam', 'Fabuła wciąga od pierwszych minut.', 6, 6, 7, 7, 7, 6.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 6, 'Niezapomniana przygoda', 'Nie spełnił moich oczekiwań.', 9, 7, 8, 6, 7, 7.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 1, 'Arcydzieło gatunku', 'Świat przedstawiony jest żywy i ciekawy.', 10, 7, 9, 9, 9, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 2, 'Solidna produkcja', 'Jeden z lepszych tytułów dekady.', 9, 8, 8, 10, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 6, 'Arcydzieło gatunku', 'Fabuła wciąga od pierwszych minut.', 9, 9, 9, 8, 10, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 3, 'Przeciętna gra', 'Mechaniki walki są satysfakcjonujące.', 9, 7, 8, 7, 7, 7.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 7, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 9, 8, 8, 9, 9, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 6, 'Wciągający gameplay', 'Polecam każdemu fanowi gatunku.', 7, 7, 8, NULL, 8, 7.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 2, 'Moja ulubiona gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 6, 6, 7, NULL, 8, 6.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 3, 'Solidna produkcja', 'Regrywalność na wysokim poziomie.', 7, 6, 8, NULL, 8, 7.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 7, 'Technicznie niedopracowana', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 7, 7, NULL, 8, 7.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 5, 'Niezapomniana przygoda', 'Dialogi napisane z humorem i sercem.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 3, 'Dobra oprawa, słaba fabuła', 'Fabuła wciąga od pierwszych minut.', 8, 7, 9, 9, 9, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 1, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 8, 9, 9, 7, 9, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 7, 'Solidna produkcja', 'Nie spełnił moich oczekiwań.', 8, 9, 10, 9, 8, 8.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 4, 'Klasyk który trzeba znać', 'Gameplay jest płynny i satysfakcjonujący.', 10, 10, 9, 8, 9, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 7, 'Genialna narracja', 'Można by poprawić optymalizację.', 8, 8, 8, 8, 7, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 4, 'Przeciętna gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 8, 9, 7, 9, 8, 8.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 5, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 9, 7, 9, 7, 8, 8.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 1, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 8, 8, 7, 9, 9, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 6, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 8, 8, 9, 8, 10, 8.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 2, 'Solidna produkcja', 'Świat przedstawiony jest żywy i ciekawy.', 8, 10, 8, 9, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 4, 'Solidna produkcja', 'Mechaniki walki są satysfakcjonujące.', 9, 8, 10, 9, 8, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 3, 'Dobra na kilka wieczorów', 'Można by poprawić optymalizację.', 8, 9, 10, 7, 8, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 3, 'Arcydzieło gatunku', 'Dialogi napisane z humorem i sercem.', 9, 8, 8, 9, 9, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 7, 'Rozczarowanie roku', 'Nie spełnił moich oczekiwań.', 10, 7, 10, 10, 9, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 5, 'Moja ulubiona gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 8, 8, 10, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 4, 'Technicznie niedopracowana', 'Polecam każdemu fanowi gatunku.', 10, 10, 9, 9, 9, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 4, 'Wciągający gameplay', 'Grafika robi wrażenie, szczególnie oświetlenie.', 9, 10, 8, 9, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 6, 'Genialna narracja', 'Można by poprawić optymalizację.', 10, 10, 8, 9, 8, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 2, 'Arcydzieło gatunku', 'Mechaniki walki są satysfakcjonujące.', 10, 7, 7, 10, 9, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 1, 'Niesamowite doświadczenie', 'Mechaniki walki są satysfakcjonujące.', 7, 10, 9, 7, 9, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 3, 'Rozczarowanie roku', 'Jeden z lepszych tytułów dekady.', 8, 7, 8, 8, 8, 7.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 1, 'Niezapomniana przygoda', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 7, 8, 9, 8.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 6, 'Niezapomniana przygoda', 'Gra zachwyca oprawą i fabułą.', 8, 9, 8, 8, 9, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 7, 'Niezapomniana przygoda', 'Muzyka doskonale buduje klimat.', 9, 7, 8, 8, 8, 8.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 4, 'Warto zagrać', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 8, 7, 9, 9, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 3, 'Wciągający gameplay', 'Nie spełnił moich oczekiwań.', 8, 8, 7, 7, 9, 7.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 4, 'Przeciętna gra', 'Dialogi napisane z humorem i sercem.', 8, 8, 9, 8, 6, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 3, 'Niezapomniana przygoda', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 9, 7, 8, 8.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 1, 'Niezapomniana przygoda', 'Gameplay jest płynny i satysfakcjonujący.', 8, 8, 8, 9, 8, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 6, 'Solidna produkcja', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 7, 8, 6, 8, 7.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 7, 'Dobra na kilka wieczorów', 'Regrywalność na wysokim poziomie.', 8, 7, 6, 9, 8, 7.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 1, 'Genialna narracja', 'Fabuła wciąga od pierwszych minut.', 9, 8, 7, 7, 8, 7.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 6, 'Rozczarowanie roku', 'Dialogi napisane z humorem i sercem.', 7, 5, 7, 7, 7, 6.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 3, 'Przeciętna gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 6, 7, 6, 5, 6.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 1, 'Warto zagrać', 'Nie spełnił moich oczekiwań.', 7, 7, 6, 7, 7, 6.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 4, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 5, 5, 7, 7, 6, 5.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 1, 'Solidna produkcja', 'Można by poprawić optymalizację.', 8, 6, 7, 8, 6, 7.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 6, 'Technicznie niedopracowana', 'Mechaniki walki są satysfakcjonujące.', 6, 6, 7, 7, 7, 6.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 4, 'Warto zagrać', 'Dialogi napisane z humorem i sercem.', 8, 7, 8, 7, 6, 7.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);