package com.example.chatbot.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import java.time.LocalDate;

@Document(collection = "orders")
public class Order {
    @Id
    private String id;
    private String username;
    private String productName;
    private String orderDate;
    private String deliveryDate;
    private String status; // e.g., "Delivered", "Shipped", "Processing"
    private String activeTicket; // e.g., "Refund Requested", null

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getActiveTicket() {
        return activeTicket;
    }

    public void setActiveTicket(String activeTicket) {
        this.activeTicket = activeTicket;
    }
}
