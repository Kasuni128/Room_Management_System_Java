 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "Payment.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />

<meta charset="UTF-8">
<title>Payment Page</title>
<style>

body{
	
	background:url("image/payment.jpg");
	background-repeat: no-repeat;
    background-size: cover;
}


label {
  margin-left:10px;
  display: block;
  color:white;
  border-radius:300px;
}
input[type=text] {
  width:180%;
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
	width: 600px;
	height:auto;
	background-color:black;
	opacity:.8;
	border-radius: 30px;
	border: outset;
	border-color:black;
	border-width:5px;
	font-size:20px;
	
}
form table{
	color:white;
	
}
#check_form label {
  text-align:left;
}
	
span.price {
  float: right;
  color: grey;
}
h2{
	color:black;
}
button{
	
	background-color:white;
	width:200px;
	border-radius:30px;
	font-size:24px;
	border-color:red;
	margin-top:20px;
	border-radius: 30px;
}
#check_form a{
	text-decoration:none;
	color:white;
}
 
.add-button {
    background-color:green;
    color:white;
    width: auto;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 30px;
}

.reset-button {
    background-color: red;
    color: white;
    width: auto;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 30px;
}

.list-button {
    background-color: blue;
    color: white;
    width:auto;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 30px;
}

.update-button {
    background-color:green;
    color:white;
    width: auto;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 30px;
}

.delete-button {
    background-color: red;
    color: white;
    width: auto;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 30px;
}


h5{
	
	font-size: 36px;
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

#heder form{
width:10px;
}

</style>

</head>
<body class="body">

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
	
	

	



	  <center> <h5>Let us know who are you.</h5> </center>
	
	
<center>
	<form method="POST" action="AddCustomerServlet">
		<center>
		<table>

			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="name" required/></td>
			</tr>
			
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" /></td>
			</tr>
			
			
			<tr>
				<td> Type</td>
				<td><input type="radio" name="type" value="credit"
					checked="checked" tabindex="1" /> Credit</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="radio" name="type" value="Debit"
					tabindex="2" />Debit</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="radio" name="type" value="paypal"
					tabindex="3" />Pay-Pal</td>
			</tr>
			
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="cardNo" required/></td>
			</tr>
			
			<tr>
				<td>Expiry</td>
				
				<td><input type="text" name="expiry" required /></td>
				
			</tr>
			
			<tr>
				<td>CVC</td>
				<td><input type="text" name="cvc" required /></td>
			</tr>
			<tr>
				<td>Bank</td>
				<td><input type="text" name="bank"  required/></td>
			</tr>
			
		
			
			<tr>
			
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
				<td colspan="2"><input type="submit" value="Accept" class="add-button" /> </td>
				
				
			</tr>
			
		
	</form>

	<form method="POST" action="ListCustomerServlet">
		<table>
			<tr>
				<td colspan="2"><input type="submit" value="View Payment History" class="list-button" />
				</td>
			</tr>
		</table>
		</center>
	</form>
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