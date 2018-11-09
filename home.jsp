<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Home Page</title>
		<link rel="stylesheet" type="text/css" href="nav.css" />
		<script src="nav.js"></script>
		<script src="login.js"></script>
	</head>
	<style>
		#leftColumn{
			width: 66%;
			height: 100%;
			float: left;
		}
		#rightColumn{
			width: 33%;
			height: 100%;
			float:right;
		}
	</style>
	<body>
		<!-- Header -->
		<div id = "navbar">
			<a href="home.jsp">BLINK</a>
		</div>

		<!-- Content -->
		<div class="content">
			<div id = "leftColumn">
				<p>STATISTICS</p>
				<p>Online Users: </p><p id = "numOnlineUsers"></p>
        		<p>Success Rate: </p><p id = "successRate"></p>
			</div>
			<div id = "rightColumn">
				<!-- Continuing User Login -->
				<h2>ContinuingUser</h2>
				<form id="loginForm1" method="POST" onsubmit="loginContinuingUser();">
					<input id="username1" type="text" placeholder="Username">
					<br><input id="password1" type="text" placeholder="Password">
					<span id="errormsg1"></span>
					<br><button type="button" onclick="loginContinuingUser()" value="Login">Login</button>
				</form>
				<br>
				<!-- New User Login -->
				<h2>New User</h2>
				<form id="loginForm2" method="POST" onsubmit="loginNewUser();">
					<input id="username2" type="text" placeholder="Username">
					<br><input id="password2" type="text" placeholder="Password">
					<span id="errormsg2"></span>
					<br><button type="button" onclick="loginNewUser()">Create Account</button>
				</form>
				<br>
				<!-- Guest Login -->
				<h2>Guest</h2>
				<form id="loginForm3" method="POST" onsubmit="loginGuest();">
					<br><button type="button" onclick="loginGuest()" value="Login">Login</button>
				</form>
			</div>
		</div>

		<!-- Footer -->
		<footer>
		</footer>
		<script>
		
		window.onload = start;
		
		function start() {
			getNumOnlineUsers();
			getSuccessRate();
		}
		
		// Display the number of users currently online
		function getNumOnlineUsers() {
			$.ajax({
				url:"numOnlineUsersServlet",
				data:{
					username: 1
				},
				type:'post',
				success: function(response) {
					console.log("response of getNumOnlineUsers: " + response);
					document.getElementById("numOnlineUsers").innerHTML = response;
				}
			});
		}
		// Display today's successful match rate
		function getSuccessRate() {
			$.ajax({
				url:"successRateServlet",
				data:{
					username: 1
				},
				type:'post',
				success: function(response) {
					console.log("test");
					console.log(response);
					document.getElementById("successRate").innerHTML = response;
				}
			});
		}
		</script>
	</body>
</html>
