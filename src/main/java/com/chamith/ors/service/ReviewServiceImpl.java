package com.chamith.ors.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chamith.ors.dto.ReviewDTO;
import com.chamith.ors.entity.Review;
import com.chamith.ors.repo.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    private final ReviewRepository reviewRepository;

    public ReviewServiceImpl(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    @Override
    public boolean addReview(ReviewDTO reviewDTO) {
        Review review = new Review();
        review.setComment(reviewDTO.getComment());
        review.setStarCount(reviewDTO.getStarCount());
        review.setDateTime(LocalDateTime.now());
        review.setReviewerName(reviewDTO.getName());

        return reviewRepository.save(review) != null;
    }

    @Override
    public List<ReviewDTO> findAllReviews() {
        List<ReviewDTO> reviewDTOList = new ArrayList<>();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

        for(Review review : reviewRepository.findAll()) {
            ReviewDTO reviewDTO = new ReviewDTO();
            reviewDTO.setId(review.getId());
            reviewDTO.setComment(review.getComment());
            reviewDTO.setStarCount(review.getStarCount());
            reviewDTO.setName(review.getReviewerName());
            reviewDTO.setDatetime(review.getDateTime().format(formatter));
            reviewDTOList.add(reviewDTO);
        }

        return reviewDTOList;
    }
}
