package com.chamith.ors.dto;

import java.util.List;

public class OrderDTO {
    private long customerId;
    private String orderType;
    private String paymentMethod;
    private List<FoodItemDTO> foodItems;

    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public List<FoodItemDTO> getFoodItems() {
        return foodItems;
    }

    public void setFoodItems(List<FoodItemDTO> foodItems) {
        this.foodItems = foodItems;
    }

    public static class FoodItemDTO {
        private int foodItemId;
        private int quantity;

        public int getFoodItemId() {
            return foodItemId;
        }

        public void setFoodItemId(int foodItemId) {
            this.foodItemId = foodItemId;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }
    }
}
