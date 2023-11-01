package feirapp.api.controller;

import java.util.List;

import feirapp.model.Fair;
import feirapp.repository.FairRepository;
import feirapp.service.FairService;
import jakarta.enterprise.inject.Produces;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.core.MediaType;
import lombok.AllArgsConstructor;

@Path("/api/v1/fairs")
@AllArgsConstructor
public class FairController {
    
    @Inject
    private final FairRepository fairRepository;
    @GET
    public List<Fair> findAll() {
        return fairRepository.listAll(null);
    }
    
    @GET
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public Fair findFairById(@PathParam("id") Long id) {
            return fairRepository.findById(id);

    }

    @POST
    @Transactional
    public Fair create(Fair inFair) {
        Fair newFair = new Fair();
        newFair.setName(inFair.getName());
        newFair.setAddres(inFair.getAddres());
        newFair.setWeekDay(inFair.getWeekDay());
        newFair.setStart(inFair.getStart());
        newFair.setEnd(inFair.getEnd());
        fairRepository.persist(newFair);
        return newFair;
    }

    @DELETE
    @Path("/{id}")
    public void delete(Long id) {
        fairRepository.deleteById(id);
    }

    
}
