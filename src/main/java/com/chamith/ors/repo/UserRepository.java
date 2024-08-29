package com.chamith.ors.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByMobile(String password);
    Optional<User> findByMobileAndPassword(String mobile, String password);
}
