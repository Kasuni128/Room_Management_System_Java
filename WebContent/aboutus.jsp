<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>

<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
<style>

body{
		
	background:url("image/home.jpg");
	background-repeat: no-repeat;
    background-size: cover;

		}
 
H3
{ text-align:center;



} 
 
P
{
font-family:'Times New Roman', Times, serif;color:#000; font-size:smaller
}

#profile p
{ text-align:center;
   font-family:"Arial Black", Gadget, sans-serif;
 }
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
			<td><center><a href ="afterhome.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>

		</tr>
		</table>
	</div>




<div style="width:100%;height:250px; background-color:#fff">


<div style="width:70%;height:250px; float:left">

<h1 style="font-style:normal; font-weight:lighter; color:#999; margin-left:50px;">About Company </h1>
<blockquote>

<p style="font-family:'Times New Roman', Times, serif;color:#000; font-size:smaller">The rooms and suites at Royal Hotel in Colombo are bright, quiet and cosy,
 and each of them has been carefully designed to make you feel at home with
 modern amenities included for your comfort. All accommodations come with
 complimentary mineral water, free Wi-Fi access throughout the hotel, 20" 
flat-screen TV with international channels and a telephone in the bedroom and bathroom. 
Additional welcome touches for your stay include in-room safe, bathrobe and slippers,
 umbrella, full minibar and 24-hour room service.

 </p>

 </blockquote>



</div>

<div style="width:30%;height:250px; background-color:green; float:left">

<img src="image/hotel.jpg"  style="width:100%; height:100%;"/>

 </div>






</div>

<div style="width:100%;height:230px; background-color:RGBA(245,246,246,0.7)">


<table>

<tr>

<td>
<h3>Terms and Conditions</h3>

<p> 
<ul>
<li>We care about you: and therefore offer our Platform and customer service in 40+ languages</li>

<li>We bring and allow you to experience: 1.5m+ properties from high (high) end to whatever serves your needs for your next stay in a hotel, motel, hostel, B&B, etc. wherever on the planet</li>
<li>We bring and allow you to experience attractions and other Trip Providers</li>
<li>We can facilitate the payment of any (entrance) fee, purchase or rental of any Trip product and service which uses our payment service</li>
<li>Your payments will be waged through industry standard Secure Sockets Layer (SSL) with 128- bit encryption key ensuring high safety & security online.</li>
<li>We promise you an informative, user-friendly website that guarantees the best available prices.</li></p>
 </ul></td>


</tr>

</table>





</div>

<div style="width:100%;height:auto; background-color:white" id="profile">
<h1 style="font-style:normal; font-weight:lighter; color:#999; margin-left:50px;">Meet Our Team </h1>


<table style="margin-left:50px">

<tr>

<td>
<img src="image/kasuni.jpeg" width="200px" height="200px" /> <br/>
<p>Ms-Kasuni Piyumali</p>



</td>


<td>
<img src="image/kaveen.jpeg" width="200px" height="200px" /> <br/>
<p>Mr-Kaveen Himanka</p>



</td>


<td>
<img src="image/himasha.jpg" width="200px" height="200px" /> <br/>
<p>Ms-Himasha Samarakoon </p>



</td>


<td>
<img src="image/rajitha.jpeg" width="200px" height="200px" /> <br/>
<p>Mr- Rajitha Priyakelum </p>



</td>





</tr>


</table>


</div>








 </section>



<br>








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