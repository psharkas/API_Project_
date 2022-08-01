package co.grandcircus.apiproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PokemonController {
	
	@Autowired
	private PokemonService apiService;
	
	@Autowired
	private PokemonRepository repo;
	
	@RequestMapping("/")
	public String goToHome(Model model) {
		
//		model.addAttribute("pokemon", apiService.getPokemon("charmander"));
		
		return "search";
	}
	
	@PostMapping("/home")
	public String searchPokemon(Model model, @RequestParam String pokemon) {
		
		model.addAttribute("pokemon", apiService.getPokemon(pokemon));
		
		return "home";
	}
	
	@RequestMapping("/addFavorite")
	public String addPokemon(Model model, @RequestParam String name) {
		
		PokeResponse newPoke = apiService.getPokemon(name);
		repo.save(newPoke);

		List<PokeResponse> favPokemon = repo.findAll();
		
		model.addAttribute("favPokemon", favPokemon);
		
		
		return "redirect:/favorites";
	}
	
	@RequestMapping("/favorites")
	public String favoritePokemon(Model model) {
		

		List<PokeResponse> favPokemon = repo.findAll();
		model.addAttribute("favPokemon", favPokemon);
		
		
		return "favorites";
	}
	
	
	@RequestMapping("/delete")
	public String deletePokemon(@RequestParam Integer id) {
		repo.deleteById(id);
		
		return "redirect:/";
	}

}
