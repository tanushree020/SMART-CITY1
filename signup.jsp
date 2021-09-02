<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<style>
    body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("https://wallpapercave.com/wp/wp2835925.png");
			background-size: cover;
			}
			
	.loginbox{
		width: 320px;
		height: 350px;
		background: #000;
		color: #fff;
		top: 50%;
		left: 50%;
		position: absolute;
		transform: translate(-50%,-50%);
		box-sizing: border-box;
		padding: 70px 30px;
}
        
        p{
	       font-family: italic;
	       font-size: 15px;
	       color: black;
	       padding-left: 55px;
	 }

</style>
</head>
<body>
	<div class="loginbox"> 
		
	
	<div align="center">
		<form action="Smart_City_Signup" method="post">
			<table border = 2 width =200 height = 200>

				<tr>
					<td>NAME :</td>
					<td><input type="text" name="name"></td>
				<tr>
					<td>USER NAME :</td>
					<td><input type="text" name="uname"></td>
				</tr>
				<tr>
					<td>PASSWORD :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="login"></td>
				</tr>
				
				
			</table>
		</form></div>
		</div>
		<p><b><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>(The Username must contain atleast one number, one special character , one lowercase and uppercase character.)</b></p>
		<p><b><br>(The password must be of 8 to 15 characters and it must contain atleast one number, one special character, one Lowercase and Uppercase character.)</b></p>
	
</body>
</html>