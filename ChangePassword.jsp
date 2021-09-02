<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<style>
	 body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("https://wallpaperaccess.com/full/1567838.jpg");
			background-size: cover;
			}
	 p{
	       font-family: italic;
	       font-size: 15px;
	       color: black;
	 }
</style>
<body>
<div align = "center">
<h3>LOGIN</h3>
	<form method="post" action="Smart_City_ChangePassword">
		<table width = 500 height = 100>
			
			<tr>
				<td>USER NAME :</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>NEW PASSWORD :</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="login"></td>
			</tr>
		</table>
	</form>
<p><b>(The password must be of 8 to 15 characters and it must contain atleast one number, one special character, one Lowercase and Uppercase character.)</b></p>
</div>
<br>
<br>

<body>

</body>
</html>