package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;

import java.util.List;

public class CarportFacade {

    public static List<Material> getMaterials(ConnectionPool connectionPool) {
        return CarportMapper.getMaterials(connectionPool);
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
