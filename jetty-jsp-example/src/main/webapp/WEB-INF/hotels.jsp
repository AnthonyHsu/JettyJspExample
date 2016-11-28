<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="edu.usfca.cs.cs601.*"%>
<%@ page import="java.util.List"%>

<%
	List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotels</title>
</head>
<body>
	<h1>Hotels</h1>
	<table>
		<tr>
			<th>Name</th>
			<th>Address</th>
		</tr>
		<%
			for (Hotel h : hotels) {
		%>
		<tr>
			<td><%=h.getName()%></td>
			<td><%=h.getAddress()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>