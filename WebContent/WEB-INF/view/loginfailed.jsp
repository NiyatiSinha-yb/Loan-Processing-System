
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>

 window.addEventListener('load', (event) => {
	 Swal.fire(
			  'Login failed!',
			  'Click on register if you are a new user!',
			  'warning'
			)
});
</script> 

</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('https://image.shutterstock.com/z/stock-vector-finance-theme-atm-piggy-bank-online-banking-money-transaction-technology-vector-illustration-1592384272.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

a{
color: yellow;
}
.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.error{
margin-left: 400px;
top: 300px;

}

.colour{
color: red;
}
.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
color: yellow;
margin-left: 4px;
}
.msg{

align: center;
}

</style>
<body>
<div class="container">

	 
	
<form:form method="post" modelAttribute="user" action="/lpswithhibernate/user/search">

	<div class="d-flex justify-content-center h-100">
	 
		<div class="card">
		   
			<div class="card-header">
				<h3>Sign In</h3>
				
			</div>
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
						<input type="text" class="form-control" name="theSearchName" path="userName" placeholder="username" required/>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" name="theSearchPass" path="password" placeholder="password" required/>
					</div>
					
					<div class="form-group">
						<input type="submit" value="Login"  class="btn float-right login_btn">
					</div>
				
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="/lpswithhibernate/user/register">Register</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
		</div>
		
	</div>
	</form:form>
</div>
</body>
</html>