package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.FoodItem;


public interface FoodRepository extends JpaRepository<FoodItem, Long> {
}
