<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
   
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
	rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  </head>
  <body>
<center>
<div>
<form method="post" action="LoginServlet">
<h1>Login Page</h1>
<label>EmailId:</label>
<input type="text" name="email" required>
<br>
<br>
<label>Password:</label>
<input type="password" name="pass" required>
<br>
<br>
<a href="forgotPassword.jsp">Forgot Password??</a><br>
<a href="Register.jsp">New Registration</a><br>
<br>
<input type="submit" value="Login">
</form>
</div>
</center>


</body>
</html>