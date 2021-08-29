<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Search</title>
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

</style>
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<script src="js/bootstrap.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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
	</br>
	
<header>
 <img class="image1" src="image/hotel1.jpg" alt="The Hotel" style="min-width:1000px" width="1500" height="400">
</header>

 <div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>Rooms</h3>
    <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.</p>
  </div>
  
  <div class="w3-row-padding">
    <div class="w3-col m5">
      <label style="color:black"><i class="fa-calendar-o" ></i> Check In</label>
     
	  <input class="w3-input w3-border" id="datepicker"  placeholder="YYYY MM DD">
    <script>
        $('#datepicker').datepicker({
          format: 'yyyy-mm-dd'
        });
    </script>
    </div>
    <div class="w3-col m5">
      <label style="color:black"><i class="fa fa-calendar-o" ></i> Check Out</label>
      <input class="w3-input w3-border" id="datepicker2" placeholder="YYYY MM DD" style="border-color:black">
	  <script>
        $('#datepicker2').datepicker({
          format: 'yyyy-mm-dd'
        });
    </script>
    </div>
    
    <div class="w3-col m2">
      <label><i class="fa fa-search"></i></label>
      
    <form method="POST" action="roomb.jsp">
      <button class="w3-button w3-block w3-black">Search</button></form>
      
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
 	
</body>
</html>