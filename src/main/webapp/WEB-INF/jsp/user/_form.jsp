<form action="${param.action}" method="post" name="form">
	<input type="hidden" name="_method" value="${param.type}"/>
	<input type="hidden" name="model.id" value="${model.id}"/>
	<input type="text" name="model.name" value="${model.name}" placeholder="Name"/>
	<input type="submit" value="Save"/>
</form>