package com.chamith.ors.entity;

import java.time.LocalDateTime;

import jakarta.persistence.*;

@Entity
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "datetime", nullable = false)
    private LocalDateTime dateTime;
    @Column(name = "tableNo", nullable = false)
    private Integer tableNo;
    @Column(name = "seatCount", nullable = false)
    private Integer seatCount;
    @ManyToOne
    @JoinColumn(name = "customerId", nullable = false)
    private User user;
    @ManyToOne
    @JoinColumn(name = "branchId", nullable = false)
    private Branch branch;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public Integer getTableNo() {
        return tableNo;
    }

    public void setTableNo(Integer tableNo) {
        this.tableNo = tableNo;
    }

    public Integer getSeatCount() {
        return seatCount;
    }

    public void setSeatCount(Integer seatCount) {
        this.seatCount = seatCount;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }
}
