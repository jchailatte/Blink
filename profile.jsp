<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Profile Page</title>
	</head>
	<body>
		
		<form name="myProfile">
				
			<input type ="text" id ="lname" value ="lname">
			<br/>
			<input type ="text" id ="fname" value ="fname">
			<br/>
			<input type="button" name ="Submit" value="Submit" onclick="insert_profile()"></input>
					
		</form>
		
	</body>
	
	<script>
	
		window.onload = displayData;
		
		function displayData(){
			var userId = sessionStorage.getItem("userId");
			$.ajax({
				url:"displayDataServlet",
				data:{
					userId: userId
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