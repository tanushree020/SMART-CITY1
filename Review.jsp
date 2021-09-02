<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
</head>
<style>
 body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("https://cdn.wallpapersafari.com/64/9/JsKhwz.jpg");
			background-size: cover;
			}
			
		</style>
<body>

	<div align = "right" style="font-size:25px"><a href = "logout.jsp">LOGOUT</a>
</div>
	
<%@page import="java.util.ArrayList"%> 
<%@page import="Smart_City.CommonPeoplePlaces"%> 
<%@page import="java.util.Iterator"%> 
<%@page import="java.util.*" %>
<% ArrayList<CommonPeoplePlaces> ReviewList = (ArrayList) request.getAttribute("ReviewList"); %>



<% out.println("<table border = 1 width =500 height = 500>");
out.println("<tr><td> NAME </td> <td> RATE </td> <td> REVIEW </td></tr>");
Iterator<CommonPeoplePlaces> iter = ReviewList.iterator();
while(iter.hasNext()){
	CommonPeoplePlaces c= iter.next();
	out.println("<tr><td>" + c.getuser()+"</td>"+ "<td>" + c.getrate() + "</td><td>" + c.getreview()+"</td></tr>");
}
out.println("</table>");


%>

</table>


</body>
</html>