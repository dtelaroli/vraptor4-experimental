<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${linkTo[UserController].index}">Users</a>
	<a href="${linkTo[UserController].edit(model.id)}">Edit</a>
	<div>Name: ${model.name}</div>
</body>
</html>