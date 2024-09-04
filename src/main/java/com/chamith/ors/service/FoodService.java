package com.chamith.ors.service;

import java.util.List;

import com.chamith.ors.dto.FoodDTO;
import com.chamith.ors.entity.FoodItem;

public interface FoodService {
    List<FoodDTO> getAllFoodItems(boolean isActive);
    FoodItem getFoodItem(long id);
    boolean addFoodItem(FoodDTO foodDTO);
    boolean updateFoodItem(long foodId, int availability);
}
