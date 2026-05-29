package pl.edu.pk.gamelibrary.auth.service;

import org.springframework.context.ApplicationEventPublisher;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.edu.pk.gamelibrary.auth.dto.AuthResponse;
import pl.edu.pk.gamelibrary.auth.dto.LoginRequest;
import pl.edu.pk.gamelibrary.auth.dto.RegisterRequest;
import pl.edu.pk.gamelibrary.auth.model.AppUser;
import pl.edu.pk.gamelibrary.auth.model.Role;
import pl.edu.pk.gamelibrary.auth.repository.UserRepository;
import pl.edu.pk.gamelibrary.events.UserRegisteredEvent;
import pl.edu.pk.gamelibrary.security.JwtService;

@Service
public class AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final ApplicationEventPublisher eventPublisher;

    public AuthService(UserRepository userRepository,
                       PasswordEncoder passwordEncoder,
                       JwtService jwtService,
                       ApplicationEventPublisher eventPublisher) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.eventPublisher = eventPublisher;
    }

    @Transactional
    public AuthResponse register(RegisterRequest request) {
        if (userRepository.existsByUsername(request.getUsername())) {
            throw new IllegalArgumentException("Użytkownik '" + request.getUsername() + "' już istnieje");
        }

        // DEV ONLY: umożliwia rejestrację admina z publicznego endpointu.
        // W produkcji nie wolno na to pozwalać (eskalacja uprawnień).
        Role role = Role.USER;
        if ("ADMIN".equalsIgnoreCase(request.getRole())) {
            role = Role.ADMIN;
        }

        AppUser user = new AppUser(
                request.getUsername(),
                passwordEncoder.encode(request.getPassword()),
                role
        );
        AppUser saved = userRepository.save(user);

        // Audit log — kto i kiedy się zarejestrował
        eventPublisher.publishEvent(
                new UserRegisteredEvent(saved.getId(), saved.getUsername(), saved.getRole().name())
        );

        String token = jwtService.generateToken(user.getUsername(), user.getRole().name());
        return new AuthResponse(token, user.getUsername(), user.getRole().name());
    }

    @Transactional
    public AuthResponse createUserAsAdmin(String username, String password, Role role) {
        if (userRepository.existsByUsername(username)) {
            throw new IllegalArgumentException("Użytkownik '" + username + "' już istnieje");
        }
        if (role == null) {
            role = Role.USER;
        }

        AppUser user = new AppUser(
                username,
                passwordEncoder.encode(password),
                role
        );
        AppUser saved = userRepository.save(user);

        eventPublisher.publishEvent(
                new UserRegisteredEvent(saved.getId(), saved.getUsername(), saved.getRole().name())
        );

        String token = jwtService.generateToken(user.getUsername(), user.getRole().name());
        return new AuthResponse(token, user.getUsername(), user.getRole().name());
    }

    public AuthResponse login(LoginRequest request) {
        AppUser user = userRepository.findByUsername(request.getUsername())
                .orElseThrow(() -> new IllegalArgumentException("Nieprawidłowe dane logowania"));

        if (!passwordEncoder.matches(request.getPassword(), user.getPassword())) {
            throw new IllegalArgumentException("Nieprawidłowe dane logowania");
        }

        String token = jwtService.generateToken(user.getUsername(), user.getRole().name());
        return new AuthResponse(token, user.getUsername(), user.getRole().name());
    }

    /**
     * Usuwa użytkownika (przez admina).
     * Dzięki kaskadowemu usuwaniu w encji AppUser, wszystkie powiązane recenzje
     * i wpisy UserGame zostaną automatycznie usunięte.
     */
    @Transactional
    public void deleteUser(Long userId) {
        if (!userRepository.existsById(userId)) {
            throw new IllegalArgumentException("Użytkownik o id=" + userId + " nie istnieje");
        }
        userRepository.deleteById(userId);
    }
}
