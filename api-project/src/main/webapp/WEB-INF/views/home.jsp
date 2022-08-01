<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Pokemon</h1>
<p>${pokemon.name}</p>
<p>${pokemon.id}</p>
<p>${pokemon.baseExperience}</p>
<c:out value="${pokemon.pokemonType}"></c:out>
<c:out value="${pokemon.abilities}"></c:out>
<img src = "${pokemon.sprites.sprite}">
<img src = "${pokemon.sprites.spriteShiny}">

<a href="/addFavorite?name=${pokemon.name}" class="button">Add to favorites</a>

</body>
</html>