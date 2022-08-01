<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokemon Search</title>
<link rel="stylesheet" href="views/homeStyleSheet.css">
<style>
.header{
	padding: 60px;
	text-align: center;
	background: white;
	color:white;
	font-size: 30px;
}
label{
	padding: 60px;
	text-align: center;
	background: white;
	color:white;
	font-size: 30px;
}

</style>
</head>
<body>
<img alt="pokemonL" src="/images/pokemon1Logo.jpg">


<h1 class="header">Pokemon</h1>
<form action="/result" method="post">
<label for="sLabel">Enter Pokemon Name:</label>
<input type="text" name="userPokemon" id="sLabel"/>
<input type="submit" class="button" id="sButton"/>
</form>


<h1>Pokemon</h1>
<p>${pokemon.name}</p>
<p>${pokemon.id}</p>
<p>${pokemon.baseExperience}</p>



</body>
</html>