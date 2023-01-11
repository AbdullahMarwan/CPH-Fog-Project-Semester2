package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;

import java.util.List;

public class CarportFacade {

    public static List<Material> getMaterials() {
        return CarportMapper.getMaterials();
    }

    public static List<Order> getOrders() {
        return CarportMapper.getOrders();
    }

    public static Carport getSpecificCarport(int orderId){
        return CarportMapper.getSpecificCarport(orderId);
    }

    public static List<Order> getOrdersByCustomerName(String customerName) {
        return CarportMapper.getOrdersByCustomerName(customerName);
    }
    public static void createOrder(Order order) {
        CarportMapper.createOrder(order);
    }

    public static void createCarport(Carport carport) {
        CarportMapper.createCarport(carport);
    }

}
