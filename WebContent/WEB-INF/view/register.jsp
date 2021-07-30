<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<!-- <link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous"> -->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>
	<div class="container">
		<form:form method="get" 
			modelAttribute="user">
			
			<div class="row text-center" style="color: tomato;">
				<h2>User Registration with JSP, Servlet and Hibernate</h2>
			</div>
			<hr>
			<div class="row col-md-10 col-md-offset-3">

				<div class="card card-body">

					<h2>User Register Form</h2>
					<div class="col-md-8 col-md-offset-3">


						<div class="form-group">
							First Name: <input type="text"
								class="form-control" id="uname" placeholder="First Name"
								name="firstName" required>
						</div>

						<div class="form-group">
							Last Name: <input type="text"
								class="form-control" id="uname" placeholder="last Name"
								name="lastName" required>
						</div>

						<div class="form-group">
							User Name:<input type="text"
								class="form-control" id="username" placeholder="User Name"
								name="userName" required>
						</div>

						<div class="form-group">
							Password:<input type="password"
								class="form-control" id="password" placeholder="Password"
								name="password" required>
						</div>
						<!-- <button type="submit" class="btn btn-primary"
							on-cl>Submit</button> -->
						<button
							class="ml-4 inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
							formaction="/lpswithhibernate/user/processForm">Submit</button>

					</div>

				</div>
			</div>
		</form:form>
	</div>
</body>
</html>