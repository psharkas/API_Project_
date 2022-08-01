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

<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Id</th>
				<th>Base Experience</th>
				<th>Type</th>
				
			</tr>
		</thead>
			<tbody>
			<c:forEach var="pokemon" items="${favPokemon}">
				<tr>
					<td>${pokemon.name}</td>
					<td>${pokemon.id}</td>
					<td>${pokemon.baseExperience}</td>
					<td>${pokemon.pokemonType}</td>
					<td><a href="/delete?id=${pokemon.id}" class="button">Delete</a></td>
					
										
				</tr>
			</c:forEach>
		</tbody>
	
		
</table>
<a href="/" class="button">Go home</a>



</body>
</html>