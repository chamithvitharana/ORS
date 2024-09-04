package com.chamith.ors.service;

import com.chamith.ors.dto.OrderDTO;
import com.chamith.ors.entity.Order;

public interface OrderService {
    Order addOrder(OrderDTO orderDTO);
    boolean addOrderItem(OrderDTO orderDTO, Order order);
    boolean updateStatus(long orderId, String newStatus);
}
