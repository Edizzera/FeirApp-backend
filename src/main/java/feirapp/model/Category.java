package feirapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Category {
    MODELO("MODELO"),
    MERCADAO("MERCADAO"),
    MISTA("MISTA"),
    ECOLOGICA("ECOLOGICA");

    private final String value;
    
}
