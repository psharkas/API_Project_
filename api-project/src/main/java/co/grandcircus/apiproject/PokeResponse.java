package co.grandcircus.apiproject;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class PokeResponse {
	
	private String name;	
	private Integer id;
	
	@JsonProperty("base_experience")
	private Integer baseExperience;
	

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




