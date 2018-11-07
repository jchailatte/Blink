<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Home Page</title>
		<link rel="stylesheet" type="text/css" href="nav.css" />
		<link rel="stylesheet" type="text/css" href="nav.css" />
		<script src="nav.js"></script>
		<script src="login.js"></script>
		<script src="stats.js"></script>
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
			<a href="profile.jsp">Profile</a>
			<a href="survey.jsp">Survey</a>
		</div>

		<!-- Content -->
		<div class="content">
			<div id = "leftColumn">
				<p>STATISTICS</p>
        <p id = "numOnlineUsers"> Online Users: </p>
        <p id = "successRate">Success Rate: </p>
			</div>
			<div id = "rightColumn">
				<!-- Continuing User Login -->
				<h2>Contuining User</h2>
				<form id="loginForm1" method="POST" onsubmit="loginContinuingUser();">
					<input id="username1" type="text" placeholder="Username" onblur="loginContinuingUser();">
					<br><input id="password1" type="text" placeholder="Password">
					<span id="errormsg1"></span>
					<br><button type="button" onclick="loginContinuingUser()" value="Login">Login</button>
				</form>
				<br>
				<!-- New User Login -->
				<h2>New User</h2>
				<form id="loginForm2" method="POST" onsubmit="loginNewUser();">
					<input id="username2" type="text" placeholder="Username" onblur="loginNewUser();">
					<br><input id="password2" type="text" placeholder="Password">
					<span id="errormsg2"></span>
					<br><button type="button" onclick="loginNewUser()" value="Login">Login</button>
				</form>
				<br>
				<!-- Guest Login -->
				<h2>Guest</h2>
				<form id="loginForm3" method="POST" onsubmit="loginGuest();">
					<input id="username3" type="text" placeholder="Username" onblur="loginGuest();">
					<span id="errormsg3"></span>
					<br><button type="button" onclick="loginGuest()" value="Login">Login</button>
				</form>
			</div>
		</div>

		<!-- Footer -->
		<footer>
		</footer>
	</body>
</html>
