<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "Room.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>Dashborad Admin Panel</title>
	<style>
		body{
		
	background:url("image/admin.jpg");
	background-repeat: no-repeat;
    background-size: cover;

		}
		.list-button {
    background-color: green; 
    color: white;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius:36px;
    font-size: 20px;
}
			
		#data{
		height: 700px;
		background:white;
		}
		
		ul li{
		padding:15px; white;
		border-bottom:  red;
		}
	
		ul li:hover{
		background: black;
		colour: white;
		text-decoration: none;
		}
	
		button {
		
		padding:4px;
		background-color:white;
		font-size:16px;
		color:black;
		}
		
		form{
			width:400px;
			background-color:black;
		}
		
		#sidebar{
			
			width: 250px;
			height: 350px;
			background:white;
			opacity:0.9;
			float:left;
			color:white;
		}
		
		#main{
		margin-left:5px;
		}
	</style>
	
</head>
<body>
	<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Welcome Admin!</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">Log Out</h3></a></center></td>
			
		</tr>
		</table>
	
	</div>
	
	<br><br>
	<div id="sidebar">
		
		<ul>	
			<li><b> <a href="admin.jsp" style="text-decoration:none; color:black;" >Dashborad</a></b></li>
			<li><b> <a href="room.jsp" style="text-decoration:none; color:black;" >Manage Room</a></b></li>
			<li><b><a href="Booking.jsp" style="text-decoration:none; color:black;">Manage Booking</a></b></li>
			<li><b><a href="manageuser.jsp" style="text-decoration:none; color:black;">Manage User</a></b></li>
		</ul>
	
	</div>

<div class="main">
 
    <div style="margin-top:15px"> 
	<table style="width:73%">
	
		<tr>

			<td><form method="POST" action="ListRoomServlet" >
		   <table>
			
			<tr>
				<td> <img src="image/a5.jpg" width="180" height="100 "> 
				<img src="image/a6.jpg" width="181" height="100 "></td>
				<tr><td></td></tr><tr><td></td></tr>
				<td colspan="2"><input type="submit" value="View All Rooms" class="list-button" > </td>
			</tr>
		</table>
		
	</form></td>
		
			<td><form method="POST" action="ListBookingServlet" >
	<table >
			
			<tr>
				<img src="image/d1.jpg" width="180" height="100 "> 
				<img src="image/d2.jpg" width="181" height="100 ">
				<tr><td></td></tr><tr><td></td></tr>
				<td colspan="2"><input type="submit" value="View All Bookings" class="list-button" > </td>
			</tr>
		</table>
	</form></td>
	</tr>
		<tr>
			<td><form method="POST" action="ListUserServlet">
			</br>
		<table>
			<tr>
			
			    <td><img src="image/d3.jpg" width="180" height="100 "> 
				<img src="image/d5.jpg" width="181" height="100 "></td>
				<tr><td></td></tr><tr><td></td></tr>
				<td colspan="2"><input type="submit" value="View All User" class="list-button" />
				</td>
			</tr>
		</table>
	</form></td>
			
						
			
			
			
			
			
		</tr>
	</table>	
	</div>
</div>


	
	
	
	
</body>
</html>