package co.grandcircus.apiproject;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface PokemonRepository extends MongoRepository<PokeResponse,String> {
	
	List<PokeResponse> findAll();
	PokeResponse save(PokeResponse pokemon);
	void deleteById(Integer id);
	

}
