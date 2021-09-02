<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tourist</title>
<style>
    body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("https://departmentofwandering.com/wp-content/uploads/2017/03/NEWZEALAND-4459.jpg");
			background-size: cover;
			}
		
	.selection-title{
		font-size: 4rem;
		font-weight: 300;
		padding: 30px;
		flex-basis: 50%;
		background-color: white;
		height: 100%;
		display: flex;
		align-items: flex-start;
		justify-content: center;
		flex-direction: column;
		background-image: linear-gradient(60deg, #29393c 0%, #485563 100%);
		color: white;
		}
		

	#projects .projects{
		flex-direction: column;
		max-width: 500px;
		margin: 0 auto;
		padding: 100px 0;
		display: flex;
		align-items: centre;
		justify-content: centre;
		}	
#projects .letter{
width: 50%;
padding-left: 438px;
}		
					
</style>			
</head>
<body>
<form action = "Smart_City_tourist" method = "post">
<section id="projects">
<div class= "projects container">
    <h1 class="section-title">
       TOURIST DESTINATIONS :
       
    </h1>
    <select name = "place"><br>
<option>Shaniwar Vada</option>
<option>Sinhagad Fort</option>
<option>Khadakwasla Dam</option>
         
</select>



<div class="letter">
<input type="submit" value="Submit"></div>
</section>
</div>
</form>
</body>
</html>