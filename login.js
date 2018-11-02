// Login a continuing user
function loginContinuingUser() {
	var username = document.getElementById("username1").value;
	var password = document.getElementById("password1").value;
	console.log("username: " + username);
	console.log("password: " + password);
	$.ajax({
		url:"login",
		data:{
			username: username,
			password: password
		},
		type:'post',
		success: function(response) {
			result = result.trim();
			var n = result.localeCompare("");
			console.log(result);
			console.log(n);
			if (n==0) {
				window.location = 'profile.jsp';
			} else {
				$("#errormsg1").html(result);
			}
		}
	});  
}

// Create an account login
function loginNewUser() {
	var username = document.getElementById("username2").value;
	var password = document.getElementById("password2").value;
	console.log("username: " + username);
	console.log("password: " + password);
	$.ajax({
		url:"newLogin",
		data:{
			username: username,
			password: password
		},
		type:'post',
		success: function(response) {
			// TODO: check if username already exists
			// display error msg if it does
			// otherwise, add the user to the data base
			
//			result = result.trim();
//			var n = result.localeCompare("");
//			console.log(result);
//			console.log(n);
//			if (n==0) {
//				window.location = 'profile.jsp';
//			} else {
//				$("#errormsg2").html(result);
//			}
		}
	});  
}

// Guest Login
function loginGuest() {
	var username = document.getElementById("username3").value;
	var password = document.getElementById("password3").value;
	console.log("username: " + username);
	console.log("password: " + password);
	$.ajax({
		url:"login",
		data:{
			username: username,
			password: password
		},
		type:'post',
		success: function(response) {
			// TODO idk
//			result = result.trim();
//			var n = result.localeCompare("");
//			console.log(result);
//			console.log(n);
//			if (n==0) {
//				window.location = 'profile.jsp';
//			} else {
//				$("#errormsg3").html(result);
//			}
		}
	});  
}