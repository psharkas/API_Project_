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
<div>
<img class= "left-berries" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cf9271dc-db76-4eb5-b55e-38d8241749e7/d3eqdie-a457dc39-ac2e-4cf9-8f9b-41f942ae15d0.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmOTI3MWRjLWRiNzYtNGViNS1iNTVlLTM4ZDgyNDE3NDllN1wvZDNlcWRpZS1hNDU3ZGMzOS1hYzJlLTRjZjktOGY5Yi00MWY5NDJhZTE1ZDAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.eTr7vZhy5tt9DCj3cPu9q-bItZnzV8P_QlM8_MgJkKM">
<img class= "right-berries" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cf9271dc-db76-4eb5-b55e-38d8241749e7/d3eqdqk-c68d2780-d7e1-4528-8981-af1b6966833b.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmOTI3MWRjLWRiNzYtNGViNS1iNTVlLTM4ZDgyNDE3NDllN1wvZDNlcWRxay1jNjhkMjc4MC1kN2UxLTQ1MjgtODk4MS1hZjFiNjk2NjgzM2IucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.NLW8rG9nWvC50GXinmGpyPpLqERn2lSCBeGPBNVTpUU">
</div>
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
					<td>#${pokemon.id}</td>
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
<img class= "left-berries" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cf9271dc-db76-4eb5-b55e-38d8241749e7/d3eqdqk-c68d2780-d7e1-4528-8981-af1b6966833b.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmOTI3MWRjLWRiNzYtNGViNS1iNTVlLTM4ZDgyNDE3NDllN1wvZDNlcWRxay1jNjhkMjc4MC1kN2UxLTQ1MjgtODk4MS1hZjFiNjk2NjgzM2IucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.NLW8rG9nWvC50GXinmGpyPpLqERn2lSCBeGPBNVTpUU">
<img class= "right-berries" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cf9271dc-db76-4eb5-b55e-38d8241749e7/d3eqdie-a457dc39-ac2e-4cf9-8f9b-41f942ae15d0.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmOTI3MWRjLWRiNzYtNGViNS1iNTVlLTM4ZDgyNDE3NDllN1wvZDNlcWRpZS1hNDU3ZGMzOS1hYzJlLTRjZjktOGY5Yi00MWY5NDJhZTE1ZDAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.eTr7vZhy5tt9DCj3cPu9q-bItZnzV8P_QlM8_MgJkKM">
</div>
<br>
<a href="/" class="button">Catch Another Pokemon</a>
</body>
</html>