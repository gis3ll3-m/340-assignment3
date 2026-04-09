package com.example.a3;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Characters")
public class UIController {

private final CharactersService service = null;

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/{Id}")
    public ResponseEntity<Characters> getCharactersByID(@PathVariable long Id, Model model) {
        Characters character = service.getCharacterById(Id);
        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/add")
    public String showForm(){
        return "new-character-form";
    }

    @GetMapping("/all")
    public String getAllCharacters(Model model){
        service.getAllCharacters();

        model.addAttribute("characterList", service.getAllCharacters());
        return "character-list";
    }
}
