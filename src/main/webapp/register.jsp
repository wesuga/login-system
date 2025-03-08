<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
<title>Register</title>
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card shadow-sm p-4">
                    <h3 class="text-center mb-3">Register</h3>

                    <form action="register" method="post">
                        <div class="mb-3">
                            <input type="text" name="username" class="form-control" placeholder="Username" required>
                        </div>
                        <div class="mb-3">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Register</button>
                    </form>

                    <% if (request.getParameter("success") != null) { %>
                        <p class="text-success text-center mt-2"><%= request.getParameter("success") %></p>
                    <% } %>

                    <% if (request.getParameter("error") != null) { %>
                        <p class="text-danger text-center mt-2"><%= request.getParameter("error") %></p>
                    <% } %>

                    <p class="text-center mt-2">
                        <a href="login" class="text-decoration-none small text-muted">Already have an account? Login here.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>