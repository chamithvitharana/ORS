package com.chamith.ors.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chamith.ors.util.IdGenerator;
import com.chamith.ors.dto.OrderDTO;
import com.chamith.ors.entity.*;
import com.chamith.ors.repo.FoodRepository;
import com.chamith.ors.repo.OrderItemRepository;
import com.chamith.ors.repo.OrderRepository;
import com.chamith.ors.repo.UserRepository;

@Service
public class OrderService {
    @Autowired
    private final OrderRepository orderRepository;
    @Autowired
    private final UserRepository userRepository;
    @Autowired
    private final FoodRepository foodRepository;
    @Autowired
    private final OrderItemRepository orderItemRepository;
    @Autowired
    private final IdGenerator idGenerator;

    public OrderService(OrderRepository orderRepository, UserRepository userRepository, FoodRepository foodRepository, OrderItemRepository orderItemRepository, IdGenerator idGenerator) {
        this.orderRepository = orderRepository;
        this.userRepository = userRepository;
        this.foodRepository = foodRepository;
        this.orderItemRepository = orderItemRepository;
        this.idGenerator = idGenerator;
    }

    public Order addOrder(OrderDTO orderDTO) {
        try {
            User user = userRepository.findById(orderDTO.getCustomerId()).orElseThrow();
            OrderType orderType = OrderType.valueOf(orderDTO.getOrderType());
            PaymentMethod paymentMethod = PaymentMethod.valueOf(orderDTO.getPaymentMethod());

            Order order = new Order();
            order.setInvoiceId(idGenerator.getId());
            order.setDateTime(LocalDateTime.now());
            order.setStatus(Status.IN_QUEUE);
            order.setPaymentMethod(paymentMethod);
            order.setUser(user);
            order.setOrderType(orderType);

            return orderRepository.save(order);
        } catch (Exception ignored) {

        }
        return null;
    }

    public boolean addOrderItem(OrderDTO orderDTO, Order order) {
        try {
            for(OrderDTO.FoodItemDTO foodItemDTO : orderDTO.getFoodItems()) {
                int quantity = foodItemDTO.getQuantity();
                FoodItem foodItem = foodRepository.findById((long) foodItemDTO.getFoodItemId()).orElseThrow();

                OrderItem orderItem = new OrderItem();
                orderItem.setOrder(order);
                orderItem.setFoodItem(foodItem);
                orderItem.setQuantity(quantity);

                orderItemRepository.save(orderItem);
            }
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
