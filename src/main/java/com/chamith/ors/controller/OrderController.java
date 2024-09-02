package com.chamith.ors.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.chamith.ors.dto.OrderDTO;
import com.chamith.ors.entity.Order;
import com.chamith.ors.service.OrderService;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/add")
    public ResponseEntity<String> addNewOrder(@RequestBody OrderDTO orderDTO) {
        Order order = orderService.addOrder(orderDTO);

        if(order != null) {
            boolean isSuccess = orderService.addOrderItem(orderDTO, order);

            return ResponseEntity.ok("Successfully added the order to queue!");
        } else {
            return ResponseEntity.badRequest().body("Something went wrong! Please try again later.");
        }
    }
}
