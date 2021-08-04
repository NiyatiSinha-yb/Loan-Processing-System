<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.rayman.lps.util.SortUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>

<title>View Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">

</head>
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}



#customers td, #customers th {
	border: 2px solid #ddd;
	padding: 8px;
	text-align: center;
	color: black;
}

#button1 {
	position: absolute;
	border: 2px solid gray;
	right: 650px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#button2 {
	position: absolute;
	border: 2px solid gray;
	right: 425px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#button3 {
	position: absolute;
	border: 2px solid gray;
	right: 295px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#customers tr:nth-child(even) {
	background-color: #F8F8FF;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #778899;
	color: white;
	text-align: center;
}

.search {
	padding: 30px;
	margin-left: 500px;
}

.add-button {
	border: 1px solid #666;
	border-radius: 5px;
	padding: 4px;
	font-size: 12px;
	font-weight: bold;
	width: 100px;
	padding: 5px 10px;
	color: white;
	margin-bottom: 15px;
	background: #778899;
}
.view{
color: blue;
}
.delete{
color: red;
}
</style>
</head>
<body>
	
	<table border="1" id="customers">

		<c:url var="sortLinkFirstName" value="/customer/list">
			<c:param name="sort"
				value="<%=Integer.toString(SortUtils.FIRST_NAME)%>" />
		</c:url>



		<!-- construct a sort link for email -->
		<c:url var="sortLinkEmail" value="/customer/list">
			<c:param name="sort" value="<%=Integer.toString(SortUtils.EMAIL)%>" />
		</c:url>
        <!-- sort link for date -->
        
        <c:url var="sortDate" value="/customer/list">
			<c:param name="sort" value="<%=Integer.toString(SortUtils.SUBMITTED_DATE)%>" />
		</c:url>
        
		<form:form action="/lpswithhibernate/customer/search" method="GET"
			modelAttribute="customer">
			<div class="search">
				Search customer: <input type="text" style="border: 2px solid black"
					name="theSearchName" /> <input type="submit" value="Search"
					class="add-button" />
			</div>


			<tr>
				<th>Application ID</th>
				<th><a href="${sortLinkFirstName}">First Name</a></th>
				<th><a href="${sortLinkEmail}">Email Address</a></th>
				<th><a href="${sortDate}">Submitted Date</a></th>
				<th>Action</th>
			</tr>
			<c:forEach var="tempCustomer" items="${customer}">
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="ID" value="${tempCustomer.ID}" />
				</c:url>
				<!-- Delete link -->
				<c:url var="deleteLink" value="/customer/showFormForDelete">
					<c:param name="customerID" value="${tempCustomer.ID}" />
				</c:url>
                
                <!-- View Form -->
                <c:url var="viewLink" value="/customer/showFormForView">
					<c:param name="ID" value="${tempCustomer.ID}" />
				</c:url>

				<tr>
					<td><a href="${updateLink}">${tempCustomer.ID}</a></td>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.emailAddress}</td>
					<td>${tempCustomer.submitted_Date}</td>
					<td>
					<a href="${viewLink}" class="view">View <span style="color:black;">|</span></a>
					<a href="${deleteLink}" class="delete"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
				</tr>
			</c:forEach>
			</form:form>
	</table>
	<br>



<div class="buttons">
<form:form method="post" action="showForm" modelAttribute="customer">
	<button
		class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/customer/showForm" id="button1">
		<b>Add a customer</b>
		
	</button>
	<span>&nbsp;&nbsp;</span>
	<button
		class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/customer/viewForm" id="button2">
		<b>Refresh Applications</b>
	</button>
	<span>&nbsp;&nbsp;</span>
	<button
		class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/user/homePage" id="button3">
		<b>Home</b>
	</button>
	</form:form>
	</div>

</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.rayman.lps.util.SortUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>

<title>View Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script >
function alertf(){
Swal.fire({
  title: 'Are you sure?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire(
      'Deleted!',
      'Your file has been deleted.',
      'success'
    )
  }
})

return false;
}
</script>
</head>
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}



#customers td, #customers th {
	border: 2px solid #ddd;
	padding: 8px;
	text-align: center;
	color: black;
}

#button1 {
	position: absolute;
	border: 2px solid gray;
	right: 650px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#button2 {
	position: absolute;
	border: 2px solid gray;
	right: 425px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#button3 {
	position: absolute;
	border: 2px solid gray;
	right: 295px;
	color: white;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

#customers tr:nth-child(even) {
	background-color: #F8F8FF;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #1E90FF;
	color: white;
	text-align: center;
}

.search {
	padding: 30px;
	margin-left: 500px;
}

.add-button {
	border: 1px solid #666;
	border-radius: 5px;
	padding: 4px;
	font-size: 12px;
	font-weight: bold;
	width: 100px;
	padding: 5px 10px;
	color: white;
	margin-bottom: 15px;
	background: #1E90FF;
}
.view{
color: blue;
}
.delete{
color: red;
}
</style>
</head>
<body>
	
	<table border="1" id="customers">

		<c:url var="sortLinkFirstName" value="/customer/list">
			<c:param name="sort"
				value="<%=Integer.toString(SortUtils.FIRST_NAME)%>" />
		</c:url>



		<!-- construct a sort link for email -->
		<c:url var="sortLinkEmail" value="/customer/list">
			<c:param name="sort" value="<%=Integer.toString(SortUtils.EMAIL)%>" />
		</c:url>
        <!-- sort link for date -->
        
        <c:url var="sortDate" value="/customer/list">
			<c:param name="sort" value="<%=Integer.toString(SortUtils.SUBMITTED_DATE)%>" />
		</c:url>
        
		<form:form action="/lpswithhibernate/customer/search" method="post"
			modelAttribute="customer">
			<div class="search">
				Search customer: <input type="text" style="border: 2px solid black"
					name="theSearchName" /> <input type="submit" value="Search"
					class="add-button" />
			</div>


			<tr>
				<th>Application ID</th>
				<th><a href="${sortLinkFirstName}">First Name</a></th>
				<th><a href="${sortLinkEmail}">Email Address</a></th>
				<th><a href="${sortDate}">Submitted Date</a></th>
				<th>Action</th>
			</tr>
			<c:forEach var="tempCustomer" items="${customer}">
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="ID" value="${tempCustomer.ID}" />
				</c:url>
				<!-- Delete link -->
				<c:url var="deleteLink" value="/customer/showFormForDelete">
					<c:param name="customerID" value="${tempCustomer.ID}" />
				</c:url>
                
                <!-- View Form -->
                <c:url var="viewLink" value="/customer/showFormForView">
					<c:param name="ID" value="${tempCustomer.ID}" />
				</c:url>

				<tr>
					<td><a href="${updateLink}">${tempCustomer.ID}</a></td>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.emailAddress}</td>
					<td>${tempCustomer.submitted_Date}</td>
					<td>
					<a href="${viewLink}" class="view">View <span style="color:black;">|</span></a>
					<a href="${deleteLink}" class="delete"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
				</tr>
			</c:forEach>
	</table>
	<br>




	<button
		class="ml-4 inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/customer/showForm" id="button1">
		<b>Add a customer</b>
		
	</button>
	<span>&nbsp;&nbsp;</span>
	<button
		class="ml-4 inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/customer/viewForm" id="button2">
		<b>Refresh Applications</b>
	</button>
	<span>&nbsp;&nbsp;</span>
	<button
		class="ml-4 inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
		formaction="/lpswithhibernate/user/homePage" id="button3">
		<b>Home</b>
	</button>
	</form:form>

</body>
</html>