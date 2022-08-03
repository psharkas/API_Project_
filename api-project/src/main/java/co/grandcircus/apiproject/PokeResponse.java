package co.grandcircus.apiproject;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.fasterxml.jackson.annotation.JsonProperty;

@Document("pokemon")
public class PokeResponse {
	
	private String name;
	
	@Id
	private Integer id;
	
	@JsonProperty("base_experience")
	private Integer baseExperience;
	
	@JsonProperty("types")
	private List<Type> pokemonType;
	
	private Sprite sprites;
	
	private List<Ability> abilities;
	
	private int height;
	
	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public List<Ability> getAbilities() {
		return abilities;
	}

	public void setAbilities(List<Ability> abilities) {
		this.abilities = abilities;
	}

	public Sprite getSprites() {
		return sprites;
	}

	public void setSprites(Sprite sprites) {
		this.sprites = sprites;
	}

	public List<Type> getPokemonType() {
		return pokemonType;
	}

	public void setPokemonType(List<Type> pokemonType) {
		this.pokemonType = pokemonType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getBaseExperience() {
		return baseExperience;
	}

	public void setBaseExperience(Integer baseExperience) {
		this.baseExperience = baseExperience;
	}


	
	

}

class Type{
	
	@JsonProperty("slot")
	private Integer slot;
	
	@JsonProperty("type")
	private typeValue value;
	
	public Integer getSlot() {
		return slot;
	}
	public void setSlot(Integer slot) {
		this.slot = slot;
	}
	public typeValue getValue() {
		return value;
	}
	public void setValue(typeValue value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return value.getName();
	}
	
	
	
}

class Ability{
	
	@JsonProperty("ability")
	private abilityValue ability;
	
	@JsonProperty("is_hidden")
	private Boolean isHidden;
	
	private Integer slot;

	public abilityValue getAbility() {
		return ability;
	}

	public void setAbility(abilityValue ability) {
		this.ability = ability;
	}

	public Boolean getIsHidden() {
		return isHidden;
	}

	public void setIsHidden(Boolean isHidden) {
		this.isHidden = isHidden;
	}

	public Integer getSlot() {
		return slot;
	}

	public void setSlot(Integer slot) {
		this.slot = slot;
	}
	
	@Override
	public String toString() {
		return ability.getName();
	}
	
	
}




