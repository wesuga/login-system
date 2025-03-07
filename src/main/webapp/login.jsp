<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">

<title>Login</title>
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">
    <div class="container d-flex justify-content-center">
        <div class="card shadow-sm p-4" style="max-width: 360px; width: 100%;">
            <h2 class="text-center mb-3">Login</h2>

            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger text-center" role="alert">
                    Invalid username or password. Please try again.
                </div>
            <% } %>

            <form action="login" method="post">
                <div class="mb-2">
                    <input type="text" name="username" class="form-control" placeholder="Username" required>
                </div>
                <div class="mb-2">
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Login</button>
            </form>

            <% if (request.getParameter("success") != null) { %>
                <p class="text-success mt-2"><%= request.getParameter("success") %></p>
            <% } %>

            <p class="text-center mt-2">
                <a href="register.jsp" class="text-decoration-none small text-muted">Don't have an account? Register here.</a>
            </p>
        </div>
    </div>
</body>

</html>