<%@page import="com.oop.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "list.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "Room.css" />
<title>Manage Booking</title>
<style>
		body{
		
	background:url("image/home.jpg");
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

.delete-button{
width:69%;
}
			
		#data{
		height: 700px;
		background:white;
		}
		
		ul li{
		padding:15px;
		color: black;
		border-bottom:  red;
		}
	
		ul li:hover{
		background: red;
		colour: red;
		text-decoration: none;
		}
	
		button {
		
		padding:4px;
		background-color:white;
		font-size:16px;
		color:black;
		}
		
		input[type=text] {
  width:75%;
  margin: 10px 0;
  display: inline-block;
  padding: 12px 20px;
  border-radius: 30px;
  text-align:right;
  border-color:white;
  border-width:2px;
  
}
form {
	color:black;
	width: 500px;
	height:auto;
	background-color:black;
	opacity:.8;
	
	border: outset;
	border-color:grey;
	border-width:5px;
	font-size:20px;
	
}

		#sidebar{
			
			width: 250px;
			height: 350px;
			background:white;
			opacity:0.9;
			float:left;
			color:black;
		}
		
		#main{
		margin-left:5px;
		}
		#header h1{
	
	font-family:Brush script ;
	color:yellow;
	margin-top:0px;
	float:lest;
}
		
	</style>
	
</head>
<body>
	<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:60px">Royal Hotel</h1><h3 style="font-size:36px;margin-left:85px;color:yellow;">Admin Panel</h3></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">Log Out</h3></a></center></td>
			
		</tr>
		</table>
	
	</div>
	
	<br><br><br><br><br>
	<div id="sidebar">
		
		<ul>	
			<li><b> <a href="admin.jsp" style="text-decoration:none; color:black;" >Dashborad</a></b></li>
			<li><b> <a href="homeView.jsp" style="text-decoration:none; color:black;" >Manage Room</a></b></li>
			<li><b><a href="Booking.jsp" style="text-decoration:none; color:black;">Manage Booking</a></b></li>
			<li><b><a href="manageuser.jsp" style="text-decoration:none; color:black;">Manage User</a></b></li>
		</ul>
	
	</div>

<center>
 
	<%
		Booking booking = (Booking) request.getAttribute("booking");
	%>

	<form method="POST" action="UpdateBookingServlet" style="border-color:black"	>
		<table>
			<tr>
				<td>Booking ID</td>
				<td><input type="text" name="bookingID" disabled="disabled"
					value="<%=booking.getBookingID()%>" /></td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="bookingName"
					value="<%=booking.getName()%>" /></td>
			</tr>
			
			<tr>
				<td>NO Of Room</td>
				<td><input type="text" name="noroom"
					value="<%=booking.getNoRoom()%>" /></td>
			</tr>
			<tr>
				<td>Booking Date</td>
				<td><input type="text" name="bookingdate"
					value="<%=booking.getBookingDate()%>" /></td>
			</tr>
			
			<tr>
				<td>Booking Price</td>
				<td><input type="text" name="price"
					value="<%=booking.getPrice()%>" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="hidden" name="bookingID"
					value="<%=booking.getBookingID()%>" /> <input type="submit"
					value="Update Booking" class="update-button"/></td>
			</tr>
		</table>
	</form>

	
				<form method="POST" action="DeleteBookingServlet" style="border-color:black" >
					<input type="hidden" name="bookingID"
						value="<%=booking.getBookingID()%>" /> <input type="submit"
						value="Delete Booking" class="delete-button"/>
				</form>
	
	</center>
</body>
</html>