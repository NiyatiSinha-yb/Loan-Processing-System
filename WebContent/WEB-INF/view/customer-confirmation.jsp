<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Customer Confirmation</title>
<style>
.button1 {
	position: absolute;
	top: 200px;
	right: 550px;
	border: 3px solid black;
  color: black;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
.button2 {
	position: absolute;
	top: 200px;
	right: 340px;
	border: 3px solid black;
  color: black;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
.right
{
width: 90%;
	padding: 10px;
	transform: translate(-20, 0px);
	position: absolute;
	top: 10;
	right: -10vw;
	margin-right: 30px;
	margin-top: -10px;
}
</style>
</head>

<body>

<!-- The customer is confirmed: ${customer.firstName } ${customer.lastName}
<br><br>

Postal Code: ${customer.postalCode}-->

 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.text.DateFormat" %>
  <%@ page import="java.text.SimpleDateFormat" %>
 
 
 <form:form method="get" >
 <div class="right"> 
			<font size="6" font face="Verdana"><br>Application Submitted Successfully</font> 
				<br> 
				<font face="Verdana"><p>
				<br>
					CONGRATULATIONS !!! Your application is submitted successfully. Our automated system will determine if you application is<br>
					accepted or not.
					<button class="button1" value="Submit" formaction="/lpswithhibernate/">Home</button>
   <button class="button2" value="View" formaction="/lpswithhibernate/customer/viewForm">View Applications</button>
				</p> </font>

		</div>
		</form:form>
</body>
</html>