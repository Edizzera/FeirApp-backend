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
import feirapp.service.FairService;
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
    FairService fairService;

    @GET
    public List<Fair> findAll() {
        return fairService.findAll();
    }

    @POST
    @Path("/search")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Fair> findFairByWeekDay(FairFilter filter) {
        return fairService.findFairByWeekDay(filter);
    }

    @PUT
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public Response update(@PathParam("id") Long id, Fair fair) {
        Fair updatedFair = fairService.update(id, fair);
        return Response.ok(updatedFair).build();
    }

    @POST
    @Transactional
    public Fair create(Fair inFair) {
        return fairService.create(inFair);
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public void delete(@PathParam("id") Long id) {
        fairService.delete(id);
    }
    
}
