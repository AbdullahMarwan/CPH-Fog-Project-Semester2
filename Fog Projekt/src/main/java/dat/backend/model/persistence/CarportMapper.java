package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import jakarta.persistence.TypedQuery;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CarportMapper {

    static List<Material> getMaterials() {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        TypedQuery<Material> query = persistenceManager.getEntityManager().createNamedQuery("getAllMaterials", Material.class);

        return query.getResultList();
    }

    static List<Order> getOrders() {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        TypedQuery<Order> query = persistenceManager.getEntityManager().createNamedQuery("getAllOrders", Order.class);

        return query.getResultList();
    }

    static List<Order> getOrdersByCustomerName(String customerName) {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        TypedQuery<Order> query = persistenceManager.getEntityManager().createNamedQuery("getOrdersCustomerName", Order.class);
        query.setParameter("customerName", customerName);

        return query.getResultList();
    }

    static void createOrder(Order order) {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        persistenceManager.entityTransaction().begin();

        persistenceManager.getEntityManager().persist((order));
        persistenceManager.entityTransaction().commit();
    }


    public static void createCarport(Carport carport) {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        persistenceManager.entityTransaction().begin();

        persistenceManager.getEntityManager().persist((carport));
        persistenceManager.entityTransaction().commit();
    }
}
