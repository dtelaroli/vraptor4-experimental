<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${linkTo[UserController].index}">Users</a>
	<jsp:include page="_form.jsp">
		<jsp:param name="action"
			value="${linkTo[UserController].create(model.id)}" />
		<jsp:param name="type" value="POST" />
	</jsp:include>
</body>
</html>