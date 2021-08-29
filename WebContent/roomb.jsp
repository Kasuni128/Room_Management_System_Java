<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   
   
   
   <style>
   
   
   #footer{
	background-color:black;
	opacity:.8;
	margin:20px;
	 margin-top:25px;
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









button{
background:green;
}
</style>

</head>
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
			<td><center><a href ="home.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>
			
					

		</tr>
		</table>
	</div>

<table style="width:100% ; background:white; opacity:0.8">
<tr>
    <th><img src="image/a10.jpg" width="290" height="160" ></th>
    <th><b>Rs.20000/=</b><br>
    	<b>Royal Hotel</b><br>
    	<b>Luxury Suite</b><br>
    	<b>3 Beds</b><br>
    	<b>R3001</b> </th>
     <th> <form method="POST" action="bookingc.html">
      <button >Reserve</button></form></th>
    
	
</tr>
</table>
<br/>



<table style="width:100% ;background:white; opacity:0.8">
<tr>
    <th><img src="image/a8.jpg" width="290" height="160" ></th>
    <th>
    	<b>Rs.9000/=</b><br>
    	<b>Royal Hotel</b><br>
    	<b>Comfort Room</b><br>
    	<b>1 bed</b><br>
    	<b>R3002</b><br>    	
    </th>
     <th> <form method="POST" action="bookingc.html">
      <button >Reserve</button></form></th>
    
	
</tr>
</table>
<br/>


<div>
<table style="width:100% ;background:white; opacity:0.8">
<tr>
    <th><img src="image/a7.jpg" width="290" height="160" ></th>
    <th>
    	<b>Rs.15000/=</b><br>
    	<b>Royal Hotel</b><br>
    	<b>Premium Room</b><br>
    	<b>3 beds</b><br>
    	<b>R3003</b>  <br>
    </th>
     <th> <form method="POST" action="bookingc.html">
      <button >Reserve</button></form></th>
    
	
</tr>
</table>
</div><br/>



<table style="width:100% ;background:white; opacity:0.8">
<tr>
    <th><img src="image/a6.jpg" width="290" height="160" ></th>
    <th>
    	<b>Rs.10000/=</b><br>
    	<b>Royal Hotel</b><br>
    	<b>Luxury Suite</b><br>
    	<b>2 Beds</b><br>
    	<b>R3004</b><br>  
    </th>
     <th> <form method="POST" action="bookingc.html">
      <button >Reserve</button></form></th>
    
	
</tr>
</table>


<br/>


<table style="width:100% ;background:white; opacity:0.8">
<tr>
    <th><img src="image/a5.jpg" width="290" height="160" ></th>
    <th>
    	<b>Rs.10000/=</b><br>
    	<b>Royal Hotel</b><br>
    	<b>Luxury Room</b><br>
    	<b>Single bed</b><br>
    	<b>R3005</b> <br>
    </th>
     <th> <form method="POST" action="bookingc.html">
      <button >Reserve</button></form></th>
    
	
</tr>
</table>
<br/>

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