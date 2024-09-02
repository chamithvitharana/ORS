package com.chamith.ors.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamith.ors.entity.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
}
