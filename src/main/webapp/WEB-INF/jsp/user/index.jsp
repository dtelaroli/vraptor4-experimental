<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${t.get('model.listOf')} ${t.get('model.name')}</title>
</head>
<body>
	<a href="${linkTo[UserController].language('pt-BR')}">pt</a>
	<a href="${linkTo[UserController].language('en-US')}">us</a>

	<a href="${linkTo[UserController].add}">${t.get('model.new')}</a>
	<table>
		<tr>
			<th>${t.get('model.name')}</th>
			<th>${t.get('model.action')}</th>
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
						onsubmit="return confirm('${t.get('model.confirm')}');">
						<button name="_method" value="DELETE">X</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>