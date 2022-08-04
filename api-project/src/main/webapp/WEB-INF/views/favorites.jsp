<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Pokemon</title>
<link rel="stylesheet" href="styles.css">
<link href="http://fonts.cdnfonts.com/css/pokemon-solid" rel="stylesheet">               
</head>
<body class="bfavorites">

<div class="header">
<h1>Your PokeFarm</h1>
</div>
<div class="gg-pokemon"></div>
<div class="favorites">
<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Sprite</th>
				<th>Type</th>
				<th>ID</th>
				<th>Base Experience</th>
				<th>Height</th>
				<th>Abilities</th>
				
			</tr>
		</thead>
			<tbody>
			<c:forEach var="pokemon" items="${favPokemon}">
				<tr>
					<td>${pokemon.name}</td>
					<td><img class= "img" src = "${pokemon.sprites.sprite}"></td>
					<td>${pokemon.pokemonType[0]} / ${pokemon.pokemonType[1]}</td>
					<td>${pokemon.id}</td>
					<td>${pokemon.baseExperience}</td>
					<td>${pokemon.height}</td>
					<td><c:forEach var="ability" items="${pokemon.abilities}">
					<c:out value="${ability},"></c:out>
				</c:forEach></td>
					<td><a href="/delete?id=${pokemon.id}" class="delete-button">Delete</a></td>
					
										
				</tr>
			</c:forEach>
		</tbody>
	
		
</table>
</div>
<br>
<a href="/" class="button">Go home</a>



</body>
</html>