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
			<li><b> <a href="room.jsp" style="text-decoration:none; color:black;" >Manage Room</a></b></li>
			<li><b><a href="Booking.jsp" style="text-decoration:none; color:black;">Manage Booking</a></b></li>
			<li><b><a href="manageuser.jsp" style="text-decoration:none; color:black;">Manage User</a></b></li>
		</ul>
	
	</div>
<center>
  
	<h2 class="h2"><b> +   Add Booking  </b></h2>
	
	
	
	

	<form method="POST" action="AddBookingServlet" >
		<table>

			<tr>
				<td><b><h3>Customer Name</h3></b></td>
				<td><input type="text" name="bookingName" required/></td>
			</tr>
			<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			<tr>
			
			<tr>
				<td><b><h3>No Of Room</h3></b></td>
				<td><input type="text" name="noroom" required/></td>
			</tr>
			
			
			<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			<tr>
				<td><b><h3>Booking Date</h3></b></td>
				<td><input type="text" name="bookingdate" required/></td>
			</tr>
			
			<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			<tr>
				<td><b><h3>Advance Price</h3></b></td>
				<td><input type="text" name="price" required/></td>
			</tr>
			<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			<tr>
				</center><td colspan="2"><input type="submit" value="Add Booking" class="add-button" /> </td>
			</tr>
			<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			<tr>	
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
			</tr>
		</table>
		
		</form> 

</center>
	

</body>



</html>