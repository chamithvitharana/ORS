package com.chamith.ors.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.chamith.ors.dto.ReviewDTO;
import com.chamith.ors.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
    @Autowired
    private final ReviewService reviewService;

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    @PostMapping("/add")
    public ResponseEntity<String> addNewReview(@RequestBody ReviewDTO reviewDTO) {
        boolean isReviewAdded = reviewService.addReview(reviewDTO);

        if(isReviewAdded) {
            return ResponseEntity.ok("We have saved your review!");
        } else {
            return ResponseEntity.badRequest().body("Something went wrong! Please try again later.");
        }
    }

    @GetMapping("/all")
    public ResponseEntity<List<ReviewDTO>> getAllReviews() {
        return ResponseEntity.ok().body(reviewService.findAllReviews());
    }
}
