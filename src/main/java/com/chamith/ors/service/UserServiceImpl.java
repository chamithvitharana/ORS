package com.chamith.ors.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chamith.ors.dto.UserDTO;
import com.chamith.ors.entity.Address;
import com.chamith.ors.entity.User;
import com.chamith.ors.entity.UserType;
import com.chamith.ors.repo.AddressRepository;
import com.chamith.ors.repo.UserRepository;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private final UserRepository userRepository;
    @Autowired
    private final AddressRepository addressRepository;

    public UserServiceImpl(UserRepository userRepository, AddressRepository addressRepository) {
        this.userRepository = userRepository;
        this.addressRepository = addressRepository;
    }

    @Override
    public boolean register(UserDTO userDTO) {
        Optional<User> userByMobile = userRepository.findByMobile(userDTO.getMobile());

        if(userByMobile.isPresent()) {
            return false;
        }

        User user = new User();
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());
        user.setMobile(userDTO.getMobile());
        user.setPassword(userDTO.getPassword());
        user.setUserType(UserType.valueOf(userDTO.getUserType()));

        return userRepository.save(user) != null;
    }

    @Override
    public User login(String mobile, String password) {
        Optional<User> userByCredentials = userRepository.findByMobileAndPassword(mobile, password);

        if(userByCredentials.isPresent()) {
            return userByCredentials.get();
        }
        return null;
    }

    @Override
    public boolean updateAddress(User user, String line1, String line2) {
        Optional<Address> addressByUser = addressRepository.findByUser(user);

        Address address;

        if(addressByUser.isPresent()) { // Get existing Address object
            address = addressByUser.get();
        } else { // Create new Address object
            address = new Address();
            address.setUser(user);
        }
        address.setLine1(line1);
        address.setLine2(line2);

        return addressRepository.save(address) != null;
    }

    @Override
    public List<UserDTO> findAllUsers() {
        List<UserDTO> userDTOList = new ArrayList<>();

        for(User user : userRepository.findAll()) {
            UserDTO userDTO = new UserDTO();
            userDTO.setFirstName(user.getFirstName());
            userDTO.setLastName(user.getLastName());
            userDTO.setMobile(user.getMobile());
            userDTO.setPassword(user.getPassword());
            userDTO.setUserType(user.getUserType().name());

            userDTOList.add(userDTO);
        }

        return userDTOList;
    }

    @Override
    public boolean deleteUser(String mobile) {
        Optional<User> userByMobile = userRepository.findByMobile(mobile);

        if(userByMobile.isEmpty()) {
            return false;
        }
        userRepository.delete(userByMobile.get());
        return true;
    }
}
