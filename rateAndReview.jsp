<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Rate and Review</title>
<div align="right" style="font-size:25px"> 
	<a href="logout.jsp">LOGOUT</a>

</div>
</head>
<body>
	  <link rel="stylesheet" type="text/css" href="style1.css">
	
	<form action="Smart_City_RateAndReview" method="post">
		Please give your rate and review for the place <br> <br>
		
  <div class="rate">
    <input type="radio" id="star5" name="rate" value="5" />
    <label for="star5" title="text">5 stars</label>
    <input type="radio" id="star4" name="rate" value="4" />
    <label for="star4" title="text">4 stars</label>
    <input type="radio" id="star3" name="rate" value="3" />
    <label for="star3" title="text">3 stars</label>
    <input type="radio" id="star2" name="rate" value="2" />
    <label for="star2" title="text">2 stars</label>
    <input type="radio" id="star1" name="rate" value="1" />
    <label for="star1" title="text">1 star</label>
    <input type="hidden"  name="rate" value="0">
  </div>
</body>
		
		<br>
		<br>
		<br> REVIEW (only 150 characters) : <br> <br>
		<textarea cols="30" rows="10" name="review" maxlength="150"></textarea>
		<br> <br> <input type="submit" value="Submit">
	</form>
	

</body>
</html>