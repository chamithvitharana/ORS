package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.Review;

public interface ReviewRepository extends JpaRepository<Review, Long> {
}
