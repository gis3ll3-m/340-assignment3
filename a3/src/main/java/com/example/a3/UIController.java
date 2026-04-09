package com.example.a3;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/characters")
@Controller
public class UIController {

    private final CharactersService service;

    public UIController(CharactersService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", service.getAllCharacters());
        return "character-list";
    }

    @GetMapping("/details/{Id}")
    public String getCharactersByID(@PathVariable long Id, Model model) {
        model.addAttribute("character", service.getCharacterById(Id));
        return "characterDetails";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/add")
    public String showForm() {
        return "new-character-form";
    }

    @PostMapping("/create")
    public String createCharacter(Characters character) {
        service.addCharacter(character);
        return "redirect:/characters/";
    }

    @PostMapping("/delete/{Id}")
    public String deleteCharacter(@PathVariable Long Id) {
        service.deleteCharacter(Id);
        return "redirect:/characters/";
    }

    @GetMapping("/edit/{Id}")
    public String showEditForm(@PathVariable Long Id, Model model){
        model.addAttribute("character", service.getCharacterById(Id));
        return "edit-character-form";
    }

    @PostMapping("/update/{Id}")
    public String updateCharacter(@PathVariable Long Id, Characters character){
        service.updateCharacters(Id, character);
        return "redirect:/characters/details/" + Id;
    }
}
