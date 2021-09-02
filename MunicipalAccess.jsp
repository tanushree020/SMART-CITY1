<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div align = "right" style="font-size:25px"><a href = "logout.jsp">LOGOUT</a>
</div>
<body>
<style>
	 body {
            height: 100%;
            margin: 0;
			padding: 0;
			background: url("data:image/jpeg;base64,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");
			background-size: cover;
			}

h3{
	font-size: 45px;
	
	}
</style>

	<h3>LOGGED IN</h3><br>
	<br>

	<form action="Smart_City_MRR" method="post">
		
		PARKS <select name="place"><br>
			<br>
			<br>
			<option>Aqsa Park</option>
			<option>Okayama friendship garden</option>
			<option>Osho teath park</option>
			<br>
			<br> </select>
			<input type="submit" value="Submit">
			<br>
			</form>
			<br>
			<br>
			<form action="Smart_City_MRR" method="post">
			
			BUS STOP : <select name = "place"><br>
				<br>
				<br>
				<option>Hadpsar</option>
				<option>Swargate</option>
				<option>Viman Nagar</option>
		</select>
			<input type="submit" value="Submit">
	</form>
	<form action = "Smart_City_MRR" method = "post">
	<br>
	<br>
	PARKING LOT : <select name = "place"><br>
		<br>
	<br>
	<option> PMC parking lot</option>
	<option> RR parking lot</option>
	<option>Saras Baug parking lot</option>
	</select>
	<input type="submit" value="Submit">
	</form><br>
	<br>
	<form action = "Smart_City_MRRTourist" method = "post">
	TOURIST DESTINATIONS : <select name = "place"><br>
	<option>Shaniwar Vada</option>
	<option>Sinhagad Fort</option>
	<option>Khadakwasla Dam</option>

</select>
<input type="submit" value="Submit">
</form>
</body>
</html>