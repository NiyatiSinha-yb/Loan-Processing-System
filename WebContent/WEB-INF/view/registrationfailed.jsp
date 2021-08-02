 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet"
	href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<style>
.border-md {
    border-width: 2px;
}

.btn-facebook {
    background: #405D9D;
    border: none;
}

.btn-facebook:hover, .btn-facebook:focus {
    background: #314879;
}

.btn-twitter {
    background: #42AEEC;
    border: none;
}

.btn-twitter:hover, .btn-twitter:focus {
    background: #1799e4;
}



/*
*
* ==========================================
* FOR DEMO PURPOSES
* ==========================================
*
*/

body {
    min-height: 100vh;
}

.form-control:not(select) {
    padding: 1.5rem 0.5rem;
}

select.form-control {
    height: 52px;
    padding-left: 0.5rem;
}

.form-control::placeholder {
    color: #ccc;
    font-weight: bold;
    font-size: 0.9rem;
}
.form-control:focus {
    box-shadow: none;
}

</style>
<body>
<!-- Navbar-->

<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
            <!-- Navbar Brand -->
            <a href="#" class="navbar-brand">
                <img src="https://www.pngfind.com/pngs/m/154-1544968_bank-abc-logo-abc-bank-logo-png-transparent.png" alt="logo" width="150">
            </a>
        </div>
    </nav>
</header>

 
 
   
<div class="container">

<form:form method="post" action="/lpswithhibernate/user/registersearch" modelAttribute="user">
    <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="data:image/png;base64,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" alt="" class="img-fluid mb-3 d-none d-md-block">
            <h1>Create an Account</h1>
            <p class="font-italic text-muted mb-0">Create an account and apply for loan at zero cost!</p>
            
        </div>
        
         <i class="fa-user-md text-muted"></i>
         <span style="color: red;">The username already exists!</span>
         
         <br><br>
        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            
                <div class="row">
                
                    <div class="form-group">
							<div class="input-group-prepend">
								
								<i class="fa fa-user text-muted"></i> <label for="uname">First
									Name:</label> <input type="text" class="form-control"
									placeholder="First Name" name="firstName" path="firstName" required="true"/> </span>
							</div>

						</div>

						<div class="form-group">
						<div class="input-group-prepend">
								
								<i class="fa fa-user text-muted"></i>
							<label for="uname">Last Name:</label> <input type="text"
								class="form-control" placeholder="last Name"
								name="lastName" path="lastName" required="true"/>
						</div>
						</div>

						<div class="form-group">
						<div class="input-group-prepend">
								
								<i class="fa fa-user text-muted"></i>
							<label for="uname">User Name:</label> <input type="text"
								class="form-control"  placeholder="User Name"
								name="userName" path="userName" required="true"/>
						</div>
						</div>
						<div class="form-group">
							<div class="input-group-prepend">
                            
                                <i class="fa fa-lock text-muted"></i>
                            
							<label for="uname">Password:</label> <input type="password"
								class="form-control"  placeholder="Password"
								name="password" path="password" required="true"/>
							
						</div>
                       </div>
                   
<br>
                    <!-- Submit Button -->
                   
                        
                            <div class="flex justify-center">
							<button
								class="inline-flex text-white bg-blue-500 border-0 py-4 px-8 focus:outline-none hover:bg-gray-600 rounded text-lg-120"
							>Submit</button>
                    
                              </div>

                   <br>
                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Already Registered? <a href="/lpswithhibernate/user/login" class="text-primary ml-2">Login</a></p>
                    </div>

                </div>
            
        </div>
    </div>
   </div> 
   </form:form>
</div>


<script>
//For Demo Purpose [Changing input group text on focus]
$(function () {
    $('input, select').on('focus', function () {
        $(this).parent().find('.input-group-text').css('border-color', '#80bdff');
    });
    $('input, select').on('blur', function () {
        $(this).parent().find('.input-group-text').css('border-color', '#ced4da');
    });
});

</script>
</body>
</html> 

