package feirapp.api.dto;

import feirapp.model.Fair.Address;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class InFair {

    private String name;
    private Address addres;
    
}
