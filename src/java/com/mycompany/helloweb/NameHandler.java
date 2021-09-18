
package com.mycompany.helloweb;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import static java.time.temporal.TemporalQueries.localTime;

/**
 *
 * @author Kevyn Alexander Chaves Castañeda
 */
public class NameHandler {
    
    private String  name;
    private String birth;
    private int edad, time;
    
    public NameHandler() {
        name = null;
        birth = null;
        time = Integer.parseInt(DateTimeFormatter.ofPattern("H").format(LocalTime.now()));
        
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public int getEdad() {
        
        return Period.between(LocalDate.parse(birth,DateTimeFormatter.ofPattern("d/M/y")),LocalDate.now()).getYears();
    }

    public int getTime() {
        return time;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }
     
    
}