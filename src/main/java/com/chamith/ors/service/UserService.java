package com.chamith.ors.service;

import java.util.List;

import com.chamith.ors.dto.UserDTO;
import com.chamith.ors.entity.User;

public interface UserService {
    boolean register(UserDTO userDTO);
    User login(String mobile, String password);
    boolean updateAddress(User user, String line1, String line2);
    List<UserDTO> findAllUsers();
    boolean deleteUser(String mobile);
}
