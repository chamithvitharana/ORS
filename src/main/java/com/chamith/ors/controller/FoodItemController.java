package com.chamith.ors.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.chamith.ors.dto.FoodDTO;
import com.chamith.ors.service.FoodService;

@RestController
@RequestMapping("/food")
public class FoodItemController {
    @Autowired
    private final FoodService foodService;

    public FoodItemController(FoodService foodService) {
        this.foodService = foodService;
    }

    @GetMapping("/add")
    public ResponseEntity<String> addNewFood(@RequestBody FoodDTO foodDTO) {
        boolean isSuccess = foodService.addFoodItem(foodDTO);

        if(isSuccess) {
            return ResponseEntity.ok("Food is saved successfully!");
        } else {
            return ResponseEntity.badRequest().body("Something went wrong! Please try again later.");
        }
    }

    @GetMapping("/all")
    public ResponseEntity<List<FoodDTO>> fetchAll(@RequestParam("isActive") boolean isActive) {
        return ResponseEntity.ok().body(foodService.getAllFoodItems(isActive));
    }

    @GetMapping("/update")
    public ResponseEntity<String> updateStatus(@RequestParam("fid") int foodId, @RequestParam("availability") int availability) {
        ResponseEntity<String> response;
        boolean isSuccess = foodService.updateFoodItem(foodId, availability);

        if(isSuccess) {
            response = ResponseEntity.ok("Status updated successfully!");
        } else {
            response = ResponseEntity.badRequest().body("Something went wrong! Please try again later.");
        }
        return response;
    }

    @GetMapping("/add/category")
    public ResponseEntity<String> addNewCategory(@RequestParam("category") String category) {
        boolean isSuccess = foodService.addFoodCategory(category);

        if(isSuccess) {
            return ResponseEntity.ok("Food category added successfully!");
        } else {
            return ResponseEntity.badRequest().body("This category already added!");
        }
    }
}
