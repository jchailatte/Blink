<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<script>
// Login a continuing user
function login() {
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	console.log("username: " + username);
	console.log("password: " + password);
	$.ajax({
		url:"login",
		data:{
		username: username,
		password: password
		},
		success: function(result) {
			result=result.trim();
			var n = result.localeCompare("");
			console.log(result);
			console.log(n);
			if(n==0){
				window.location = 'profile.jsp';
			}else{
				$("#errormsg").html(result);
			}
			
		}
	 }); 
	}
</script>
</head>
<body>
	<form id="loginForm" name="loginForm" method="POST" onsubmit="login();">
	<input id="username" type="text" placeholder="Username" onblur="login();">
	<input id="password" type="text" placeholder="Password">
	<span id="errormsg"></span>
	<button type="button" onclick="login()" value="Login">Login</button>
	</form>
</body>
</html>
