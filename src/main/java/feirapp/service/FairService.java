package feirapp.service;

import java.util.List;

import feirapp.model.Fair;
import feirapp.model.FairFilter;
import feirapp.model.PropertiesHelper;
import feirapp.repository.FairRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.NotFoundException;

@ApplicationScoped
public class FairService {

    @Inject
    FairRepository fairRepository;

    public List<Fair> findAll() {
        return fairRepository.listAll();
    }

    public List<Fair> findFairByWeekDay(FairFilter filter) {
        return fairRepository.findByFilter(filter);
    }

    @Transactional
    public Fair update(Long id, Fair fair) {
        Fair existingFair = fairRepository.findById(id);
        if (existingFair == null) {
            throw new NotFoundException("Fair not found");
        }
        PropertiesHelper.copyNonNullProperties(fair, existingFair);
        fairRepository.persist(existingFair);
        return existingFair;
    }

    @Transactional
    public Fair create(Fair inFair) {
        Fair newFair = new Fair();
        PropertiesHelper.copyNonNullProperties(inFair, newFair);
        fairRepository.persist(newFair);
        return newFair;
    }

    @Transactional
    public void delete(Long id) {
        boolean deleted = fairRepository.deleteById(id);
        if (!deleted) {
            throw new NotFoundException("Fair not found");
        }
    }
    
}
