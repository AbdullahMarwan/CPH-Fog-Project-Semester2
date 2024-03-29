package dat.backend.model.entities;

import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@NamedQuery(name = "getAllOrders", query = "SELECT o FROM Order o")
@Table(name = "orders")
public class Order {
    @Id
    @Column(name = "order_id")
    private int orderId;
    @Column(name = "customer_name")
    private String customerName;
    @Column(name = "order_date")
    private Timestamp orderDate;

    public Order(int orderId, String customerName, Timestamp orderDate) {
        this.orderId = orderId;
        this.customerName = customerName;
        this.orderDate = orderDate;
    }

    public Order() {

    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }
}
