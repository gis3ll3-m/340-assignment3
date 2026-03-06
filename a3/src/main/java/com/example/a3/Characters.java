package com.example.a3;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "CareBears")
public class Characters {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    private String bellyBadge;
    private String specialAbility;

    public Characters() {
    }

    //Character ID
    public Long getCharacterId() {
        return characterId;
    }

    public void setCharacterId(Long characterId) {
        this.characterId = characterId;
    }

    //Name
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    //Description
    public String getDescription(){
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    //Belly Badge
    public String getBellyBadge(){
        return bellyBadge;
    }

    public void setBellyBadge(String bellyBadge){
        this.bellyBadge = bellyBadge;
    }

    //Special ability
    public String getSpecialAbility(){
        return specialAbility;
    }

    public void setSpecialAbility(String specialAbility){
        this.specialAbility = specialAbility;
    }
}
