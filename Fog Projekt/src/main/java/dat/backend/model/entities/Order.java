package dat.backend.model.entities;

import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@NamedQueries({
        @NamedQuery(name = "getAllOrders", query = "SELECT o FROM Order o"),
        @NamedQuery(name = "getOrdersCustomerName", query = "SELECT o FROM Order o WHERE o.customerName = :customerName"),
})
@Table(name = "orders")
public class Order {
    @Id
    @Column(name = "order_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderId;
    @Column(name = "customer_name")
    private String customerName;
    @Column(name = "order_date")
    @Temporal(TemporalType.DATE)
    private Timestamp orderDate;
    @Column(name = "carport_id")
    private int carportId;

    public Order(int orderId, String customerName, Timestamp orderDate, int carportId) {
        this.orderId = orderId;
        this.customerName = customerName;
        this.orderDate = orderDate;
        this.carportId = carportId;
    }

    public Order() {

    }

    public int getCarportId() {
        return carportId;
    }

    public void setCarportId(int carportId) {
        this.carportId = carportId;
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
