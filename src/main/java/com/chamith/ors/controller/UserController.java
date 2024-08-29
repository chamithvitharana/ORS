package com.chamith.ors.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.chamith.ors.dto.UserDTO;
import com.chamith.ors.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public ResponseEntity<String> registerUser(@RequestBody UserDTO userDTO) {
        boolean isUserRegistered = userService.register(userDTO);

        if(isUserRegistered) {
            return ResponseEntity.ok("User is registered successfully! You can login now.");
        } else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Something went wrong! Plese try again later.");
        }
    }
}
