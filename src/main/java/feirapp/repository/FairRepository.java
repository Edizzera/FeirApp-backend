package feirapp.repository;

import feirapp.model.Fair;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class FairRepository  implements PanacheRepository<Fair>{
    
}
