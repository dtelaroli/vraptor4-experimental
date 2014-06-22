<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fx" tagdir="/WEB-INF/tags"%>

<%@ attribute name="type" required="true"%>
<%@ attribute name="action" required="true"%>
<%@ attribute name="page" required="false" %>

<ul>
	<c:forEach var="error" items="${errors}">
		<li>${t.get(error.category)} - ${error.message}</li>
	</c:forEach>
</ul>

<form action="${action}" method="post" name="form">
	<input type="hidden" name="_method" value="${type}"/>
	<jsp:include page="${empty page ? '_form.jsp' : page}">
		<jsp:param name="action" value="${action}" />
		<jsp:param name="type" value="${type}" />
	</jsp:include>
</form>