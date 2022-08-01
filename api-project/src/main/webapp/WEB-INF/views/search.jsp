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

<form action="/home" method="post">
	Search the Pokemon API: <input name="pokemon" type="text"/><br>	
	<input type="submit"/>
</form>

<a href="/favorites" class="button">View favorites</a>


</body>
</html>