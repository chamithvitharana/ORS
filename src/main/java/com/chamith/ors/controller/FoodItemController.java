package com.chamith.ors.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
