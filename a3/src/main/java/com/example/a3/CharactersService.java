package com.example.a3;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharactersService{
    private final CharactersRepository repository;

    public CharactersService(CharactersRepository repository){
        this.repository = repository;
    }

    public List<Characters> getAllCharacters(){
        return repository.findAll();
    }

    public Characters addCharacter(Characters characters){
        return repository.save(characters);
    }

    public Characters updateCharacters(Long Id, Characters updatedCharacter){
        return repository.findById(Id)
        .map(character -> {
            character.setName(updatedCharacter.getName());
            character.setDescription(updatedCharacter.getDescription());
            character.setBellyBadge(updatedCharacter.getBellyBadge());
            character.setSpecialAbility(updatedCharacter.getSpecialAbility());
            character.setImageUrl(updatedCharacter.getImageUrl());
            character.setFavFood(updatedCharacter.getFavFood());
            character.setFunFact(updatedCharacter.getFunFact());
            return repository.save(character);
        })
        .orElse(null);
    }

    public Characters getCharacterById(Long Id){
        return repository.findById(Id).orElse(null);
    }

    public void deleteCharacter(Long Id){
        repository.deleteById(Id);
    }

    public List <Characters> getCharactersByBellyBadge(String bellyBadge){
        return repository.findByBellyBadge(bellyBadge);
    }

    public List <Characters> searchCharacterByName(String name){
        return repository.findByNameContaining(name);
    }

    
}