package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.User;
import jakarta.persistence.TypedQuery;

import java.sql.*;
import java.util.ArrayList;
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


}
