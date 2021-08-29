<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Home	</title>
	<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "form.css" />
   
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
	 margin-top:5px;
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
</style>
	
</head>
<body>
	<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
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
	
	<br/>
	<center>
	<div id="container">
		
		<div id="sliderbox">

		<img src="image/1.jpg" width="800" height="400"/>
		<img src="image/2.jpg"width="800" height="400"/>
		<img src="image/3.jpg"width="800" height="400"/>
		<img src="image/4.jpg"width="800" height="400"/>

	</div>	
	</div>
</center>
	
	
	<div id="slide">
	
    <div style="margin-top:50px"> 
		<div id="check_form">
<center>

			<form name="MyForm" action="roomb.jsp" target="_blank" method="get">
			<h2 style="font-size:35px"><b><i><u>Check Room</u></i><b></h2>
			<label><b>Rooom Type</b></label>
            <input type="text" id="state" name="state" placeholder="SL" >
			<label><b>Check-in</b></label>
            <input type="text" id="Check-In" name="Check-In" placeholder="DD/MM/YY">
			<label><b>Check-Out</b></label>
            <input type="text" id="Check-Out" name="Check-Out" placeholder="DD/MM/YY">
			</br>
			<button><a href="search.jsp"><b>Check </b></a></button>
			
			</form>
			</center>
			
</center>
</div>
	</div>
	</div>
	
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
	
	
</html>
