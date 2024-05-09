<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
<form action="RegisterServlet" method="post" name="form">
<h1>Registration Page</h1>
<label>Enter Username:</label>
<input type="text" name="name" required>
<br>
<br>
<label>Enter Password:</label>
<input type="password" name="pass" maxlength="10" id="pass" required>
<br>
<br>
<label>Confirm Password:</label>
<input type="password" name="cpass" maxlength="10" id="cpass" required >
<br>
<br>
<label>Email:</label>
<input type="email" name="email" required>
<br>
<br>
<label>Select Gender:</label>
<select id="gender" name="gender">
<option name="gender">Select</option>
<option name="gender">Male</option>
<option name="gender">Female</option>
<option name="gender">Others</option>
</select>
<br>
<br>
<label>Contact:</label>
<input type="text" name="contact" required>
<br>
<br>
<label>Address:</label>
<input type="text" name="address" required>
<br>
<br>
<a href="Login.jsp">Already have An Account?</a><br>
<br>
<input type="submit" value="Register" onclick="check(document.form.name)">
</form>
</div>
</center>

<script>
function check(name){
	var regeEx= /^[A-Za-z]+$/;
	if(name.value.match(regEx)){
		return true;
	}else{
		alert("Please Enter letters only");
		return false;
	}
}

function keyup(){

}


</script>
</body>
</html>