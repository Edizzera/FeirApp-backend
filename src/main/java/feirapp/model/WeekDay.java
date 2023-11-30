package feirapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum WeekDay {
    DOMINGO("DOMINGO"),
    SEGUNDA("SEGUNDA"),
    TERCA("TERCA"),
    QUARTA("QUARTA"),
    QUINTA("QUINTA"),
    SEXTA("SEXTA"),
    SABADO("SABADO");

    private final String value;
    
}
