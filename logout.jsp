<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOG OUT</title>
<style>
    body {
            height: 100%;
            margin: 30px;
			padding: 100px 0;
		   /* background: url("");*/
			background-size: cover;
			font-size: 4rem;
			font-weight: 300;
			align-items: flex-start;
			justify-content: center;
			font-family: fantasy;
			}	
		</style>	
</head>
<body>
<%session.invalidate();
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.sendRedirect("index.jsp");

%>

Successfully logged out !!<br>
Thank You 
<br>
<a href="index.jsp" >Go back to home page</a>
<br> 
</body>
</html>