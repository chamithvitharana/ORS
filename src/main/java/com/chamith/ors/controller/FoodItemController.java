package com.chamith.ors.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.chamith.ors.dto.FoodCategoryDTO;
import com.chamith.ors.dto.FoodDTO;
import com.chamith.ors.service.FoodService;
import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/food")
public class FoodItemController {
    @Autowired
    private final FoodService foodService;

    public FoodItemController(FoodService foodService) {
        this.foodService = foodService;
    }

    @PostMapping("/add")
    public ResponseEntity<String> addNewFood(@RequestPart("fooditem") FoodDTO foodDTO,
                                             @RequestPart("image")MultipartFile image,
                                             HttpServletRequest request) {

        try {
            String filename = saveImage(image, request);
            foodDTO.setAvailability(1);
            foodDTO.setImagePath(filename);
            boolean isSuccess = foodService.addFoodItem(foodDTO);

            if(isSuccess) {
                return ResponseEntity.ok("Food is saved successfully!");
            }
        } catch (IOException ignored) {

        }
        return ResponseEntity.badRequest().body("Something went wrong! Please try again later.");
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

    @GetMapping("/all/category")
    public ResponseEntity<List<FoodCategoryDTO>> getAllCategories() {
        return ResponseEntity.ok().body(foodService.getAllCategories());
    }

    private static String saveImage(MultipartFile image, HttpServletRequest request) throws IOException {
        String uploadDir = "/images/foodItems/";
        String realUploadPath = request.getServletContext().getRealPath(uploadDir);

        if(!new File(realUploadPath).exists()) {
            boolean mkdir = new File(realUploadPath).mkdir();
        }
        String filname = System.currentTimeMillis() +"-"+ image.getOriginalFilename() ;
        filname = filname.replace(' ', '-');

        File destination = new File(realUploadPath + filname);
        image.transferTo(destination);

        return filname;
    }
}
