package dat.backend.model.persistence;

import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

public class UserFacade {
    public static User login(String username, String password) throws DatabaseException {
        return UserMapper.newLogin(username, password);
    }

    public static User createUser(String username, String password, String role) throws DatabaseException {

        User user = new User(username, password, role);

        return UserMapper.newCreateUser(user);
    }
}
