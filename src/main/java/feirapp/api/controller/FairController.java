package feirapp.api.controller;

import java.util.List;
import java.util.Optional;

import org.eclipse.microprofile.openapi.annotations.parameters.RequestBody;

import feirapp.model.Fair;
import feirapp.model.FairFilter;
// import feirapp.model.Favorite;
import feirapp.model.PropertiesHelper;
// import feirapp.model.User;
import feirapp.repository.FairRepository;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lombok.AllArgsConstructor;

@Path("/api/v1/fairs")
@AllArgsConstructor
public class FairController {
    
    @Inject
    private final FairRepository fairRepository;

    @GET
    public List<Fair> findAll() {
        return fairRepository.listAll();
    }
    
    @POST
    @Path("/search")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Fair> findFairByWeekDay(FairFilter filter) {
            return fairRepository.findByFilter(filter);
    }

    @PUT
    @Transactional
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(@PathParam("id") Long id, @RequestBody Fair fair) {
        Fair existingFair = fairRepository.findById(id);
        PropertiesHelper.copyNonNullProperties(fair, existingFair);
        fairRepository.persist(existingFair);

        return Response.ok(existingFair).build();
    }

    @POST
    @Transactional
    public Fair create(Fair inFair) {
        try {
            Fair newFair = new Fair();
            newFair.setName(inFair.getName());
            newFair.setAddress(inFair.getAddress());
            newFair.setCategory(inFair.getCategory());
            newFair.setWeekDay(inFair.getWeekDay());
            newFair.setStart(inFair.getStart());
            newFair.setEnd(inFair.getEnd());
            newFair.setLatitude(inFair.getLatitude());
            newFair.setLongitude(inFair.getLongitude());
            fairRepository.persist(newFair);
            return newFair;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public void delete(@PathParam("id") Long id) {
        fairRepository.deleteById(id);
    }
    
}
