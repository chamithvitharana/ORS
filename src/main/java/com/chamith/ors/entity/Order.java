package com.chamith.ors.entity;

import java.time.LocalDateTime;

import jakarta.persistence.*;

@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String invoiceId;
    @Column(nullable = false)
    private LocalDateTime dateTime;
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "statusId", nullable = false)
    private Status status;
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "paymentMethodId", nullable = false)
    private PaymentMethod paymentMethod;
    @ManyToOne
    @JoinColumn(name = "customerId", nullable = false)
    private User user;
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "orderTypeId", nullable = false)
    private OrderType orderType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(String invoiceId) {
        this.invoiceId = invoiceId;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public OrderType getOrderType() {
        return orderType;
    }

    public void setOrderType(OrderType orderType) {
        this.orderType = orderType;
    }
}
