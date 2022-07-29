package co.grandcircus.apiproject;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class PokemonService {
	
	private RestTemplate restTemplate = new RestTemplate();
	
	
	//incl a param to get multiple random jokes
	public PokeResponse getPokemon(String name) {
		String url = "https://pokeapi.co/api/v2/pokemon/{name}";
		PokeResponse response = restTemplate.getForObject(url, PokeResponse.class, name);
		return response;
	}

}
