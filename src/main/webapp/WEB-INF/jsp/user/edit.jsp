<%@ taglib prefix="fx" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${t.get('model.edit')} ${t.get('user.title')} - ${user.name}</title>
</head>
<body>
	<a href="${linkTo[UserController].index}">${t.get('model.list')}</a>
	
	<fx:form action="${linkTo[UserController].update(user.id)}" type="put"/>
</body>
</html>