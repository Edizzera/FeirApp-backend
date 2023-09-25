package feirapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Fair {
    
    private long id;
    private String name;
    private Address addres;
    

    @AllArgsConstructor
    @NoArgsConstructor
    @Getter
    @Setter
    public static class Address {
        private String street;
        private String district;
        private int number;
    }
}
