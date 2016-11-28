<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to JSP</title>
</head>
<body>
	<p>
		Your IP address is
		<%=request.getRemoteAddr()%>
	</p>
	<p>
		Today's date:
		<%=(new java.util.Date()).toString()%>
	</p>
	<a href="hotels">view hotels</a>
</body>
</html>