<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<meta charset="UTF-8">
		<title>Profile Page</title>
		
		<link rel="stylesheet" type="text/css" href="nav.css" />
		<!-- <script src="nav.js"></script> -->
	</head>
	<body>
		<!-- Header -->
		<div id = "navbar">
			<a href="home.jsp">BLINK</a>
			<a href="profile.jsp">Profile</a>
			<a href="survey.jsp">Survey</a>
		</div>
		
		<!-- Content -->
		<div class="content">
			<form name="myProfile">
				
				<input type ="text" id ="lname" value ="lname">
				<br/>
				<input type ="text" id ="fname" value ="fname">
				<br/>
				<input type="button" name ="Submit" value="Submit" onclick="insert_profile()"></input>
					
			</form>
		</div>
		
		<!-- Footer -->
		<footer>
		</footer>
	</body>
	
	<script>
	
		window.onload = displayData;
		
		function displayData(){
			var userId = sessionStorage.getItem("userId");
 			$.ajax({
				url:"displayDataServlet",
				data:{
					userId: 1
				},
				type: 'post',
 				success: function(response){
					
					var data = response.split(',',3);
					
					document.getElementById("lname").value = data[0];
					document.getElementById("fname").value = data[1];
				}
			});
		}
	
		function insert_profile(){
			
			var age = document.getElementById("lname").value;
			var gender = document.getElementById("fname").value;

			$.ajax({
				url:"profileServlet",
				data:{
					lname: lname,
					fname: fname,
				},
				type: 'post',
			});
			//window.location.replace("");
			
		}
		
	
	</script>
</html>