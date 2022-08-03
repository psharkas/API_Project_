<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results for Pokemon</title>
<link rel="stylesheet" href="styles.css">
<link href="http://fonts.cdnfonts.com/css/pokemon-solid" rel="stylesheet">       
</head>
<body class="bhome">
<div class="header">
<h1>Pokemon</h1>
</div>
<div class="all-card">
<div class="pokemon-card-container">
		
	<div class="pokemon-card">
			<div class="background">
			<img class= "image" src = "${pokemon.sprites.sprite}">
			</div>
			
			<div class="content">
				<h1 class="pokemon-name">${pokemon.name}</h1>
				<span class="pokemon-type">${pokemon.pokemonType}</span>
				<div class="pokemon-stats">
				<p>ID : ${pokemon.id}</p>
				<p>Exp : ${pokemon.baseExperience}</p>
				<p>Height : <c:out value="${pokemon.height}"></c:out></p>
				<p>Ability : <c:out value="${pokemon.abilities}"></c:out></p>
				</div>

				<h1 class="pokemon-logo">Pokemon Card</h1>

			</div>
	</div>
</div>
</div>
<a href="/addFavorite?name=${pokemon.name}" class="button">Catch this Pokemon</a>

</body>
</html>