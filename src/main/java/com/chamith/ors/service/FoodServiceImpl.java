package com.chamith.ors.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chamith.ors.dto.FoodDTO;
import com.chamith.ors.entity.FoodCategory;
import com.chamith.ors.entity.FoodItem;
import com.chamith.ors.entity.FoodStatus;
import com.chamith.ors.entity.Image;
import com.chamith.ors.repo.FoodCategoryRepository;
import com.chamith.ors.repo.FoodRepository;
import com.chamith.ors.repo.ImageRepository;

@Service
public class FoodServiceImpl implements FoodService {
    @Autowired
    private final FoodRepository foodRepository;
    @Autowired
    private final ImageRepository imageRepository;
    @Autowired
    private final FoodCategoryRepository foodCategoryRepository;

    public FoodServiceImpl(FoodRepository foodRepository,
                           ImageRepository imageRepository,
                           FoodCategoryRepository foodCategoryRepository) {
        this.foodRepository = foodRepository;
        this.imageRepository = imageRepository;
        this.foodCategoryRepository = foodCategoryRepository;
    }

    @Override
    public List<FoodDTO> getAllFoodItems(boolean isActive) {
        List<FoodDTO> foodDTOList = new ArrayList<>();

        for(FoodItem food : foodRepository.findAll()) {
            if(isActive && food.getStatus() == FoodStatus.NOT_AVAILABLE) {
                continue;
            }
            FoodDTO foodDTO = new FoodDTO();
            foodDTO.setId(food.getId());
            foodDTO.setName(food.getName());
            foodDTO.setPrice(food.getPrice());
            foodDTO.setAvailability(food.getStatus().ordinal());
            foodDTO.setImagePath(food.getImage().getPath());

            foodDTOList.add(foodDTO);
        }
        return foodDTOList;
    }

    @Override
    public FoodItem getFoodItem(long id) {
        return null;
    }

    @Override
    public boolean addFoodItem(FoodDTO foodDTO) {
        try {
            FoodStatus status = FoodStatus.valueOf(foodDTO.getAvailability());
            Image image = addFoodItemImage(foodDTO.getImagePath());
            FoodCategory foodCategory = findFoodCategory(foodDTO.getCategoryId());

            FoodItem foodItem = new FoodItem();
            foodItem.setName(foodDTO.getName());
            foodItem.setPrice(foodDTO.getPrice());
            foodItem.setImage(image);
            foodItem.setStatus(status);
            foodItem.setCategory(foodCategory);

            return foodRepository.save(foodItem) != null;
        } catch (IllegalArgumentException ignored) {

        }
        return false;
    }

    @Override
    public boolean updateFoodItem(long foodId, int availability) {
        Optional<FoodItem> foodItemById = foodRepository.findById(foodId);

        if(foodItemById.isEmpty()) {
            return false;
        }

        FoodItem foodItem = foodItemById.get();
        foodItem.setStatus(FoodStatus.valueOf(availability));

        return foodRepository.save(foodItem) != null;
    }

    private FoodCategory findFoodCategory(long id) {
        return foodCategoryRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Category not found for given id: " + id));
    }

    private Image addFoodItemImage(String path) {
        Image image = new Image();
        image.setPath(path);

        return imageRepository.save(image);
    }
}
