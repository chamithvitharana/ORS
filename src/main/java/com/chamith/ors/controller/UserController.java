package com.chamith.ors.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.chamith.ors.dto.UserDTO;
import com.chamith.ors.entity.User;
import com.chamith.ors.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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

    @PostMapping("/login")
    public ResponseEntity<String> loginUser(@RequestParam("username") String username,
                                            @RequestParam("password") String password,
                                            HttpServletRequest request) {
        User loginUser = userService.login(username, password);

        if(loginUser != null) {
            // Set the session for user object
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", loginUser);

            return ResponseEntity.ok("Login is success!");
        } else {
            return ResponseEntity.badRequest().body("User does not exists! Please register first.");
        }
    }
}
