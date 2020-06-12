<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Spring Security</title>
</head>
<body>
	
	<h2>Welcome to Home Page</h2>
	<hr>
	<p>
		Welcome Rohit Manohar
	</p>
	<hr>
	<!-- Display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role: <security:authentication property="principal.authorities"/>
	</p>
	<!-- link to point to /leaders... this is for the managers  -->
	<security:authorize access="hasRole('MANAGER')">
			<p>
				<a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
				(Only for Manager peeps)
			</p>
	</security:authorize>

	<!-- link to point to /system... this is for the admins -->
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/system">IT Systems Meeting</a>
			(Only for Admin peeps)
		</p>
	</security:authorize>
	<hr>
	
	<!-- Logout Button -->
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout"/>
	</form:form>
</body>
</html>