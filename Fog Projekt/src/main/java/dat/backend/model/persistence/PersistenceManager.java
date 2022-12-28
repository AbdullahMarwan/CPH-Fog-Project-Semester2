package dat.backend.model.persistence;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class PersistenceManager {
    EntityManager entityManager;

    public PersistenceManager(String entityUnit) {
        this.entityManager = Persistence
                .createEntityManagerFactory(entityUnit)
                .createEntityManager();
    }

    public EntityTransaction entityTransaction(){
        return this.entityManager.getTransaction();
    }

    public EntityManager getEntityManager() {
        return entityManager;
    }
}
