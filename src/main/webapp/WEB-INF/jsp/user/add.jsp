<%@ taglib prefix="fx" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${t.get('model.new')} ${t.get('user.title')}</title>
</head>
<body>
	<a href="${linkTo[UserController].index}">${t.get('model.list')}</a>
	<fx:form action="${linkTo[UserController].create}" type="post"/>
</body>
</html>