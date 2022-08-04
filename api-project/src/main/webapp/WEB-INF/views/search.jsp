<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokedex</title>
<link rel="stylesheet" href="styles.css">
<link href="http://fonts.cdnfonts.com/css/pokemon-solid"
	rel="stylesheet">
</head>
<body class="bsearch">
	<div class="header">
		<h1>Pokedex</h1>
	</div>
	<br>
	<br>
	<form class="search" action="/home" method="post">
		Search the Pokemon database: <input name="pokemon" type="text"
			placeholder="ex:pikachu" /><br> <br> <input class="button"
			type="submit" value="Search Tall Grass" />
	</form>
	<img class="leftpokeball"
		src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/800px-Pokebola-pokeball-png-0.png">
	<img class="rightpokeball"
		src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/800px-Pokebola-pokeball-png-0.png">
	<br>
	<br>
	<div class="favbutton">
		<a href="/favorites" class="button">View Your PokeFarm</a>
	</div>
</body>
</html>