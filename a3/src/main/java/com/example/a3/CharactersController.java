package com.example.a3;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/characters")
public class CharactersController{

    private final CharactersService service;

    public CharactersController(CharactersService service){
        this.service = service;
    }

    @GetMapping
    public List<Characters> getAllCharacters(){
        return service.getAllCharacters();
    }

    @PostMapping
    public Characters addCharacters(@RequestBody Characters character){
        return service.addCharacter(character);
    }

    @PutMapping("/{Id}")
        public Characters updateCharacters(@PathVariable Long Id, @RequestBody Characters character){
            return service.updateCharacters(Id, character);
        }

    @DeleteMapping("/{Id}")
        public void deleteCharacter(@PathVariable Long Id){
            service.deleteCharacter(Id);
        }

    @GetMapping("/bellyBadge/{bellyBadge}")
        public List<Characters> getCharactersByBellyBadge(@PathVariable String bellyBadge){
            return service.getCharactersByBellyBadge(bellyBadge);
        }    

        @GetMapping("/search/{name}")
        public List <Characters> searcCharacters(@PathVariable String name){
            return service.searchCharacterByName(name);
        }


}