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
			font-family: Arial, Helvetica, sans-serif;
		}
		#statsTitle {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 30px;
		}
		.statsSmall {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 20px;
		}
		.question {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 20px;
		}
		.answer {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 10px;
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
				<div id = "introBox">
					<p class="question">What is BLINK?</p>
					<p class="answer">
						BLINK is an anonymous speed dating website that matches users based on personality instead of appearance.
					</p>
					</br>
					<p class="question">STEP 1: Tell us about yourself</p>
					<p class="answer">
						Fill out your profile and answer a survey about yourself.
					</p>
					</br>
					<p class="question">STEP 2: Find a match</p>
					<p class="answer">
						Hit "match" to start your first "date"!
						Based on your survey results, you will be put into a one-on-one anonymous chat.
					</p>
					</br>
					<p class="question">STEP 3: Speed date</p>
					<p class="answer">
						You will have exactly 2 minutes to get to know this person.
						When time is up, you will either "reveal" or "reject".
						If and only if both of you choose "reveal", your profiles will become visible to each other and you may stay in the chat indefinitely.
						If at least one of you chose "reject", the date is over.
						Hit "match" again to move on to your next date!
					</p>
				</div>
				<br>
				<p id="statsTitle">Today's Statistics</p>
				<p class="statsSmall">Online Users: </p><p id = "numOnlineUsers"></p>
        		<p class="statsSmall">Success Rate: </p><p id = "successRate"></p>
			</div>
			<div id = "rightColumn">
				<!-- Continuing User Login -->
				<p class="loginTitle">Continuing User</p>
				<form id="loginForm1" method="POST" onsubmit="loginContinuingUser();">
					<input id="username1" type="text" placeholder="Username">
					<br><input id="password1" type="text" placeholder="Password">
					<span id="errormsg1"></span>
					<br><button type="button" onclick="loginContinuingUser()" value="Login">Login</button>
				</form>
				<br>
				<!-- New User Login -->
				<p class="loginTitle">New User</p>
				<form id="loginForm2" method="POST" onsubmit="loginNewUser();">
					<input id="username2" type="text" placeholder="Username">
					<br><input id="password2" type="text" placeholder="Password">
					<span id="errormsg2"></span>
					<br><button type="button" onclick="loginNewUser()">Create Account</button>
				</form>
				<br>
				<!-- Guest Login -->
				<p>Guest</p>
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
