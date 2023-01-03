package dat.backend.model.persistence;

import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

class UserMapper {

    static User newLogin(String username, String password) {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        User user = persistenceManager.getEntityManager().find(User.class, username);

        if (user != null) {
            if (user.getPassword().equals(password)) {
                return user;
            }
        }

        return null;
    }

    static User newCreateUser(User user) {
        Logger.getLogger("web").log(Level.INFO, "");

        PersistenceManager persistenceManager = new PersistenceManager("fog-unit");

        persistenceManager.entityTransaction().begin();

        persistenceManager.getEntityManager().persist((user));
        persistenceManager.entityTransaction().commit();

        return null;
    }

}
