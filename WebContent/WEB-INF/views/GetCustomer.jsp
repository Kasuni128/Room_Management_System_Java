<%@page import="com.oop.model.Customer"%>
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
.update-button{
width:280px;
}

.delete-button{
width:280px;
}

form {
	color:black;
	width: 750px;
	height:auto;
	background-color:black;
	opacity:.8;
	border-radius: 30px;
	border: outset;
	border-color:grey;
	border-width:5px;
	font-size:20px;
	
}
input[type=text] {
  width:130%;
  margin: 10px 0;
  display: inline-block;
  padding: 12px 20px;
  border-radius: 30px;
  text-align:right;
  border-color:white;
  border-width:2px;
  
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
			<td><center><a href ="home.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>

		</tr>
		</table>
	</div>
	
	


	

	

	
		
	<%
		Customer customer = (Customer) request.getAttribute("customer");
	%>
<center>
	<form method="POST" action="UpdateCustomerServlet">
		<table>
			<tr>
				<td>Customer ID</td>
				<td><input type="text" name="customerID" disabled="disabled"
					value="<%=customer.getCustomerID()%>" /></td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="name"
					value="<%=customer.getName()%>" required/></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile"
					value="<%=customer.getMobile()%>" /></td>
			</tr>
			
			<tr>
				<td> Type</td>
				<td><input type="radio" name="type" value="credit"
					checked="checked" tabindex="1" value="<%=customer.getType()%>"/> Credit</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="radio" name="type" value="Debit"
					tabindex="2" value="<%=customer.getType()%>"/>Debit</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="radio" name="type" value="paypal"
					tabindex="3" value="<%=customer.getType()%>" />Pay-Pal</td>
			</tr>
			
			
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="cardNo"
					value="<%=customer.getCardNo()%> " required /></td>
			</tr>
				
			<tr>
				<td>Expiry</td>
				<td><input type="text" name="expiry"
					value="<%=customer.getExpiry()%>" required /></td>
			</tr>				
			
			<tr>
				<td>CVC</td>
				<td><input type="text" name="cvc"
					value="<%=customer.getCVC()%>"  required/></td>
			</tr>
			
			<tr>
				<td>Bank</td>
				<td><input type="text" name="bank"
					value="<%=customer.getBank()%>"  required/></td>
			</tr>
			
			<tr>
				<td colspan="2" style="float:left"><input type="hidden" name="customerID"
					value="<%=customer.getCustomerID()%>" /> <input type="submit"
					value="Success" class="update-button"/></td>
			
		
	</form>

	
		
		
			<td colspan="2">
				<form method="POST" action="DeleteCustomerServlet" style="width:60px; border-color:black;" >
					<input type="hidden" name="customerID"
						value="<%=customer.getCustomerID()%>" /> <input type="submit"
						value="Cancel Payment" class="delete-button"/>
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