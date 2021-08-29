<%@page import="com.oop.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   
   <link rel = "stylesheet"
   type = "text/css"
   href = "Room.css" />
   
   
   
   <style>
   body{
		
	background:url("image/home.jpg");
	background-repeat: no-repeat;
    background-size: cover;

		}
   #footer{
	background-color:black;
	opacity:.8;
	margin:20px;
	 margin-top:55px;
	height:50px;
	border-radius:10px;
	color:white;
	
	
}
#footer a{
	text-decoration:none;
	color:white;
}
#footer p{
	color:white;
}


.update-button{
border-radius:100px;
background:green;
width:auto;

} 

.delete-button{
border-radius:100px;
background:red;
width:auto;
}  

#nav{
margin-top:15px;
}

table th{
	
		background:red;
		opacity:0.6;
		color:white;
		 font-size: 20px;
	
}
table h2{
	
	color:red;
}

table{
	
	background:black;
	color:white;
}
</style></head>
<body>
<div id="header">
	
		<table style="width:100%" >
		<tr>
			
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="Login.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
			<form method="POST" action="afterhome.jsp">Logout</form></h3></a></center></td>
		</tr>
		</table>
	
	</div>
	
	<div id="nav">	
		
		<table style="width:100%">
		<tr>
			<td><center><a href ="afterhome.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>
			
					

		</tr>
		</table>
	</div>


	
	
	
	<%
		Booking booking = (Booking) request.getAttribute("booking");
	%>

<center>
	<form method="POST" action="UpdateBookingServletC">
		<table>
			<tr>
				<td><h2>Booking ID</h2></td>
				<td><input type="text" name="bookingID" disabled="disabled"
					value="<%=booking.getBookingID()%>" /></td>
			</tr>
			<tr>
				<td><h2>Customer Name</h2></td>
				<td><input type="text" name="bookingName"
					value="<%=booking.getName()%>" /></td>
			</tr>
			
			<tr>
				<td><h2>NO Of Room</h2></td>
				<td><input type="text" name="noroom"
					value="<%=booking.getNoRoom()%>" /></td>
			</tr>
			<tr>
				<td><h2>Booking Date</h2></td>
				<td><input type="text" name="bookingdate"
					value="<%=booking.getBookingDate()%>" /></td>
			</tr>
			
			<tr>
				<td><h2>Booking Price</h2></td>
				<td><input type="text" name="price"
					value="<%=booking.getPrice()%>" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="hidden" name="bookingID"
					value="<%=booking.getBookingID()%>" /> <input type="submit"
					value="Update Booking" class="update-button"/></td>
			
		
	</form>

	
			<td colspan="2">
				<form method="POST" action="DeleteBookingServletC">
					<input type="hidden" name="bookingID"
						value="<%=booking.getBookingID()%>" /> <input type="submit"
						value="Delete Booking" class="delete-button"/>
				</form>
				
				
			</td>
		</tr>
	</table>
</center>
			
						
			
			
			
			
			
	
<div id="footer">
		<table style="width:100%">
		<tr>
			<td><center><b>Hotline : </b></center></td>
			
			<td><b>071 6528117 </b></td>
			
			<td><center><b>Fax : </b></center></td>
			
			<td><b>086 6518 662</b></td>
			
			<td><center><b>Email :</b></center></td>
			
			<td><b>royalhotel@gmail.com </b></td>
			
			
  
</table>
	</div>	
</body>
</html>