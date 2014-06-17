<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${linkTo[UserController].add}">New User</a>
	<table>
		<tr>
			<th>Name</th>
			<th>Action</th>
		</tr>
		<c:forEach var="user" items="${modelList}">
			<tr>
				<td><a href="${linkTo[UserController].show(user.id)}">${user.name}</a>
				</td>
				<td>
					<form style="display: inline;"
						action="${linkTo[UserController].edit(user.id)}">
						<button>V</button>
					</form>
					<form style="display: inline;"
						action="${linkTo[UserController].destroy(user.id)}" method="post"
						onsubmit="return confirm('Are you sure?');">
						<button name="_method" value="DELETE">X</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>