package pl.edu.pk.gamelibrary.admin.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.edu.pk.gamelibrary.review.ReviewService;

@Tag(name = "Admin", description = "Zarządzanie recenzjami (tylko ADMIN)")
@RestController
@RequestMapping("/api/admin/reviews")
public class AdminReviewController {

    private final ReviewService reviewService;

    public AdminReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    @Operation(summary = "Usuń recenzję (admin)",
               description = "Endpoint dostępny tylko dla administratorów. Pozwala usunąć dowolną recenzję (np. spam).",
               security = @SecurityRequirement(name = "bearerAuth"))
    @ApiResponses({
        @ApiResponse(responseCode = "204", description = "Recenzja usunięta"),
        @ApiResponse(responseCode = "401", description = "Brak tokenu JWT"),
        @ApiResponse(responseCode = "403", description = "Brak roli ADMIN"),
        @ApiResponse(responseCode = "404", description = "Recenzja nie istnieje")
    })
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReview(@PathVariable Long id) {
        reviewService.deleteReviewByAdmin(id);
        return ResponseEntity.noContent().build();
    }
}
