package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.Order;

import java.util.List;

public class CarportFacade {

    public static List<Material> getMaterials() {
        return CarportMapper.getMaterials();
    }

    public static List<Order> getOrders() {
        return CarportMapper.getOrders();
    }



    /*
    public static List<Carport> Carport(ConnectionPool connectionPool) {
        return CarportMapper.Carport(connectionPool);
    }

    public static void createOrder(User user, ShoppingCart cart, ConnectionPool connectionPool) {
        CarportMapper.createOrder(user, cart, connectionPool);
    }

     */

}
