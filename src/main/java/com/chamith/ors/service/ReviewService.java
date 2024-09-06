package com.chamith.ors.service;

import java.util.List;

import com.chamith.ors.dto.ReviewDTO;

public interface ReviewService {
    boolean addReview(ReviewDTO reviewDTO);
    List<ReviewDTO> findAllReviews();
}
