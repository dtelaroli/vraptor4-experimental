<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${t.get('model.view')} ${t.get('user.title')} - ${user.name}</title>
</head>
<body>
	<a href="${linkTo[UserController].index}">${t.get('model.list')}</a>
	<a href="${linkTo[UserController].edit(user.id)}">${t.get('model.edit')}</a>
	<div>${t.get('model.name')}: ${user.name}</div>
	<div>${t.get('model.createdAt')}: ${user.createdAt.time}</div>
	<div>${t.get('model.updatedAt')}: ${user.updatedAt.time}</div>
</body>
</html>