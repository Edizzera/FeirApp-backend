package feirapp.api.controller;

import org.junit.jupiter.api.Test;
import feirapp.model.Address;
import feirapp.model.Category;
import feirapp.model.Fair;
import feirapp.model.FairFilter;
import feirapp.model.WeekDay;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.*;
import static org.hamcrest.CoreMatchers.is;


@QuarkusTest
public class FairControllerTest {

    @Test
    void testFindAllEndpoint() {
        given()
          .when().get("/api/v1/fairs")
          .then()
             .statusCode(Response.Status.OK.getStatusCode())
             .body("$", not(empty())); 
    }

    @Test
    public void testFindFairByWeekDayEndpoint() {
        FairFilter filter = new FairFilter(WeekDay.DOMINGO,Category.MODELO);
        given()
          .contentType(MediaType.APPLICATION_JSON)
          .body(filter)
          .when().post("/api/v1/fairs/search")
          .then()
             .statusCode(Response.Status.OK.getStatusCode())
             .body("$", not(empty())); 
    }

    @Test
    public void testUpdateEndpoint() {
        Fair fairToUpdate = new Fair();
        fairToUpdate.setAddress(new Address("Rua","Centro",0));
        Long fairId = 3L;
        given()
          .contentType(MediaType.APPLICATION_JSON)
          .pathParam("id", fairId)
          .body(fairToUpdate)
          .when().put("/api/v1/fairs/{id}")
          .then()
             .statusCode(Response.Status.OK.getStatusCode())
             .body("id", is(fairId.intValue()));
    }

    @Test
    public void testCreateEndpoint() {
        Fair newFair = new Fair();
        Address address = new Address("Rua","Centro",0);
        newFair.setName("Novinha");
        newFair.setAddress(address);
        given()
          .contentType(MediaType.APPLICATION_JSON)
          .body(newFair)
          .when().post("/api/v1/fairs")
          .then()
             .statusCode(Response.Status.OK.getStatusCode())
             .body("name", is("Novinha")); 
    }

    @Test
    public void testDeleteEndpoint() {
        Long fairId = 1L;
        given()
          .pathParam("id", fairId)
          .when().delete("/api/v1/fairs/{id}")
          .then()
             .statusCode(Response.Status.NO_CONTENT.getStatusCode());
    }

    
}
