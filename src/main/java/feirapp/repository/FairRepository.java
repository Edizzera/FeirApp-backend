package feirapp.repository;

import java.util.List;

import feirapp.model.Fair;
import feirapp.model.FairFilter;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@ApplicationScoped
public class FairRepository implements PanacheRepository<Fair> {
   @PersistenceContext
    EntityManager em;
    public List<Fair> findByFilter(FairFilter filter) {
        String jpql = "SELECT f FROM Fair f WHERE 1 = 1";

        if (filter.getWeekDay() != null) {
            jpql += " AND f.weekDay = :weekDay";
        }
        if (filter.getCategory() != null) {
            jpql += " AND f.category = :category";
        }

        var query = em.createQuery(jpql, Fair.class);

        if (filter.getWeekDay() != null) {
            query.setParameter("weekDay", filter.getWeekDay());
        }
        if (filter.getCategory() != null) {
            query.setParameter("category", filter.getCategory());
        }

        return query.getResultList();
    }
    
}
