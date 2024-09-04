package com.chamith.ors.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.Branch;

public interface BranchRepository extends JpaRepository<Branch, Long> {
    Optional<String> findByName(String name);
}
