package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
