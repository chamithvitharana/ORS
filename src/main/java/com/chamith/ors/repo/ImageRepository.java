package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
