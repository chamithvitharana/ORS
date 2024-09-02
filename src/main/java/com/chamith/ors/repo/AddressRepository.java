package com.chamith.ors.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.Address;
import com.chamith.ors.entity.User;

public interface AddressRepository extends JpaRepository<Address, Long> {
    Optional<Address> findByUser(User user);
}
