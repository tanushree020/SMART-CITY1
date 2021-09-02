<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
 body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("https://cdn.wallpapersafari.com/6/59/pHuFe1.jpg");
			background-size: cover;
			}
			</style>
	<div align = "right" style="font-size:25px"><a href = "logout.jsp">LOGOUT</a>
</div>
	
<%@page import="java.util.ArrayList"%> 
<%@page import="Smart_City.TouristDestinations"%> 
<%@page import="java.util.Iterator"%> 
<%@page import="java.util.*" %>
<% ArrayList<TouristDestinations> ReviewList = (ArrayList) request.getAttribute("ReviewList"); %>



<% out.println("<table border = 4 width =700 height = 500>");
out.println("<tr> <td><b> RATE </b></td> <td><b> REVIEW </b></td></tr>");
Iterator<TouristDestinations> iter = ReviewList.iterator();
while(iter.hasNext()){
	TouristDestinations c= iter.next();
	out.println("<tr><td><b>"  + c.getrate() + "</b></td><td><b>" + c.getreview()+"</b></td></tr>");
}
out.println("</table>");


%>

</table>


</body>

</body>
</html>