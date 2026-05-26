package pl.edu.pk.gamelibrary.events;

/**
 * Publikowany po pomyślnej rejestracji nowego użytkownika.
 */
public record UserRegisteredEvent(Long userId, String username, String role) {}
