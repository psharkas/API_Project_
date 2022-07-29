package co.grandcircus.apiproject;

import org.springframework.data.annotation.Id;

public class Pokemon {
	
	@Id
	private String mongoId;
	private Integer id;
	private String name;
	
	
	
	public Pokemon() {
		
	}
	
	public Pokemon(Integer id, String name) {
		this.id = id;
		this.name = name;
	}

	public String getMongoId() {
		return mongoId;
	}

	public void setMongoId(String mongoId) {
		this.mongoId = mongoId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
	

}
