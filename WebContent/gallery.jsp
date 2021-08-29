<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Gallery</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   
   
   
   <style>
   
   #footer{
	background-color:black;
	opacity:.8;
	margin:20px;
	 margin-top:50px;
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



div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 300px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
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
			<form method="POST" action="afterhome.jsp" style="color:white; width:60px;"  >Logout</form></h3></a></center></td>
		</tr>
		</table>
	
	</div>
	
	<div id="nav">	
		
		<table style="width:100%">
		<tr>
			<td><center><a href ="afterrhome.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>

		</tr>
		</table>
	</div>
	
		<center><h1 style="color:blue;font-size:80px;">Royal Hotel Gallery</h1></center>
	
<table style="width:100%" >
<tr>
<td><div class="gallery">
  <a target="_blank" href="image/b1.jpg">
    <img src="image/b1.jpg"  >
  </a>
  
</div>
</td>
<td>
<div class="gallery">
  <a target="_blank" href="image/b10.jpg">
    <img src="image/b10.jpg"  >
  </a>
 
</div></td>

<td><div class="gallery">
  <a target="_blank" href="image/b11.jpg">
    <img src="image/b11.jpg" >
  </a>
 
</div></td>

<td><div class="gallery">
  <a target="_blank" href="image/b14.jpg">
    <img src="image/b14.jpg" >
  </a>
 </div></td></tr>
 
 <tr><td><div class="gallery">
  <a target="_blank" href="image/b2.jpg">
    <img src="image/b2.jpg" >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/b3.jpg">
    <img src="image/b3.jpg" >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/b7.jpg">
    <img src="image/b7.jpg" >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/b6.jpg">
    <img src="image/b6.jpg"  >
  </a>
 </div></td></tr>
 <tr>
 <td><div class="gallery">
  <a target="_blank" href="image/b4.jpg">
    <img src="image/b4.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c1.jpg">
    <img src="image/c1.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c10.jpg">
    <img src="image/c10.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c11.jpg">
    <img src="image/c11.jpg"  >
  </a>
 </div></td></tr>
 <tr><td>
 <div class="gallery">
  <a target="_blank" href="image/c12.jpg">
    <img src="image/c12.jpg"  >
  </a>
 </div></td>
 
<td> <div class="gallery">
  <a target="_blank" href="image/c2.jpg">
    <img src="image/c2.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c3.jpg">
    <img src="image/c3.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c4.jpg">
    <img src="image/c4.jpg"  >
  </a>
 </div></td></tr>
 
 <tr><td><div class="gallery">
  <a target="_blank" href="image/c6.jpg">
    <img src="image/c6.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c7.jpg">
    <img src="image/c7.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c8.jpg">
    <img src="image/c8.jpg"  >
  </a>
 </div></td>
 
 <td><div class="gallery">
  <a target="_blank" href="image/c9.jpg">
    <img src="image/c9.jpg"  >
  </a>
 </div></td>
 </table>
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