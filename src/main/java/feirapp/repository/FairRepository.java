package feirapp.repository;

import java.util.List;

import feirapp.model.Fair;
import feirapp.model.Search;
import feirapp.model.WeekDay;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.persistence.TypedQuery;

@ApplicationScoped
public class FairRepository implements PanacheRepository<Fair> {
   public List<Fair> findByWeekDay(Search search) {
    String jpql = "from Fair c where 1=1";

    if (search.getName() != null) {
        jpql += " and c.name = :name";        
    }
    if (search.getWeekDay() != null) {
        jpql += " and c.weekDay = :weekDay";
        
    }

    TypedQuery<Fair> query = getEntityManager().createQuery(jpql, Fair.class);
        if (search.getName() != null) {
        query.setParameter("name", search.getName());
        query.setParameter("weekDay", search.getWeekDay());       
       
    }
    return query.getResultList();
   }
    
}
