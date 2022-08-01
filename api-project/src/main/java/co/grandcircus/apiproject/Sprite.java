package co.grandcircus.apiproject;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Sprite {
	
	@JsonProperty("front_default")
    public String sprite;

    @JsonProperty("front_shiny")
    public String spriteShiny;

	public String getSprite() {
		return sprite;
	}

	public void setSprite(String sprite) {
		this.sprite = sprite;
	}

	public String getSpriteShiny() {
		return spriteShiny;
	}

	public void setSpriteShiny(String spriteShiny) {
		this.spriteShiny = spriteShiny;
	}

 

}
