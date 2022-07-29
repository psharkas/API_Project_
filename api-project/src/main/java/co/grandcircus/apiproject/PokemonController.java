package co.grandcircus.apiproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PokemonController {
	
	@Autowired
	private PokemonService apiService;
	
	@RequestMapping("/")
	public String goToHome(Model model) {
		
		model.addAttribute("pokemon", apiService.getPokemon("charmander"));
		
		return "home";
	}

}
