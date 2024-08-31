package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.FoodCategory;

public interface FoodCategoryRepository extends JpaRepository<FoodCategory, Long> {
}
