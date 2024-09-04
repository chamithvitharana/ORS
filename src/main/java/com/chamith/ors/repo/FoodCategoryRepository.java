package com.chamith.ors.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.FoodCategory;

public interface FoodCategoryRepository extends JpaRepository<FoodCategory, Long> {
    Optional<FoodCategory> findByName(String name);
}
