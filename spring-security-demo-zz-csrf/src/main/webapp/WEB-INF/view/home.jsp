<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
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
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout"/>
	</form:form>
</body>
</html>