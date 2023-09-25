package feirapp.api.controller;

import java.util.List;

import feirapp.api.dto.InFair;
import feirapp.model.Fair;
import feirapp.service.FairService;
import jakarta.enterprise.inject.Produces;
import jakarta.inject.Inject;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.core.MediaType;

@Path("/api/v1/fairs")
public class FairController {
    
    // @Inject
    // private final FairService fairService;
    @GET
    // @Produces(MediaType.APPLICATION_JSON)
    public List<Fair> findAll() {
        return List.of(new Fair());
    }
    
    @GET
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public Fair findFairById(@PathParam("id") String id) {
            return new Fair();

    }

    @POST
    public Fair create(InFair inFair) {
        return new Fair();
    }

    @DELETE
    public void delete(Long id) {

    }

    
}
