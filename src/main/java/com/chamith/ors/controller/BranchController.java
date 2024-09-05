package com.chamith.ors.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chamith.ors.dto.BranchDTO;
import com.chamith.ors.service.BranchService;

@RestController
@RequestMapping("/branch")
public class BranchController {
    @Autowired
    private final BranchService branchService;

    public BranchController(BranchService branchService) {
        this.branchService = branchService;
    }

    @GetMapping("/add")
    public ResponseEntity<String> addNewBranch(@RequestParam("branch") String name) {
        boolean isSuccess = branchService.addBranch(name);

        if(isSuccess) {
            return ResponseEntity.ok("Branch added successfully!");
        } else {
            return ResponseEntity.badRequest().body("This branch is already added!");
        }
    }

    @GetMapping("/get")
    public ResponseEntity<List<BranchDTO>> getAllBranches() {
        return ResponseEntity.ok().body(branchService.findAllBranch());
    }
}
