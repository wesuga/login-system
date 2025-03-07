<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
	if (session == null || session.getAttribute("user") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
<title>Welcome</title>
</head>
<body class="container mt-5">
    <h2 class="mb-3">Welcome, <%= session.getAttribute("user") %>!</h2>
    <a href="logout" class="btn btn-danger">Logout</a>
</body>
</html>