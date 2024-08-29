package com.chamith.ors.service;

import com.chamith.ors.dto.UserDTO;
import com.chamith.ors.entity.User;

public interface UserService {
    boolean register(UserDTO userDTO);
    User login(String mobile, String password);
}
