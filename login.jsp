<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Form Design</title>
    <link rel="stylesheet" type="text/css" href="style.css">
<body>
    <div class="loginbox">
    <img src="pic2.png" class="pic2">
        <h1>Login Here</h1>
        <form method="post" action="Smart_City">
        <p>Username</p>
        <input type="text" placeholder="Username Please"
                    name="uname" required>
            <p>Password</p>
           <input type="password" placeholder="Enter Password"
                    name="password" required>
            
            <button type="submit" class="buttn">Login</button><br>
            <br>
            <a href= "ChangePassword.jsp"> FORGOT PASSWORD?</a><br>
            <br>
           
            <a href="signup.jsp">Don't have an account?</a>
        </form>
    </div>

</body>
</head> 
</html> 

