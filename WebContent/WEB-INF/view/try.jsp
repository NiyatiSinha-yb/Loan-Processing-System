<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
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





<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />



</head>

<style>
body {
	color: #000;
	overflow-x: hidden;
	height: 130%;
	background-image:
		/*  url("https://source.unsplash.com/1515x2990/?money,bank, cash,twenty dollar");
		url("https://thumbs.dreamstime.com/b/vertical-dome-utah-state-capital-building-pale-blue-sky-background-grand-columns-balcony-illuminated-bright-147968946.jpg"); */
		url("https://a.travel-assets.com/findyours-php/viewfinder/images/res70/483000/483736-capitol-hill-utah.jpg");
	background-repeat: no-repeat;
	background-size: 260% 100%
}

.card {
	background-color: white;
	padding: 40px 40px;
	/* margin-left: 450px; 
	 margin-right: -300px;
	margin-left: 100px;
	margin-top: 60px;
	margin-bottom: 60px; */
	opacity: 95%;
	width: 80%;
	border: none;
	box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2);
	border: none !important;
}

.blue-text {
	color: #00BCD4
}

.form-control-label {
	margin-bottom: 0
}

input, textarea, button {
	padding: 8px 15px;
	border-radius: 5px !important;
	margin: 5px 0px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	font-size: 18px !important;
	font-weight: 300
}

input:focus, textarea:focus {
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
	border: 1px solid #00BCD4;
	outline-width: 0;
	font-weight: 400
}

option {
	color: black;
}

.btn-block {
	text-transform: uppercase;
	font-size: 15px;
	font-weight: 400;
	height: 43px;
	cursor: pointer
}

.btn-block:hover {
	color: #fff;
}

button:focus {
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
	outline-width: 0
}
</style>

<body>
	<div class="container">
		<div class="card">
			<form class="form-card" action="/az.php" name="myForm" onsubmit="return validateForm()"
				method="post">
				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="form-group " id="name">
							<label class="control-label" for="name" > First Name </label>
							 <input class="form-control"  name="fname"
								placeholder="Enter your first name" type="text" required /><span
								class="formerror"> </span>
								 <!-- <div class="formdesign" id="name">
          							  Name: <input type="text" name="fname" required><b><span class="formerror"> </span></b>
       							 </div> -->

						</div>
						<div class="flex justify-center">
							<button
								class="inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								>
								<p style="color: white; padding-top: 5px;">Submit</p>
							</button>
							<span>&nbsp;</span>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
</body>
<script>
				function seterror(id,error){
					/*  var element= document.getElementById(id); */
				 	/* console.log(element.getElementsByClassName('form-control')); */
				 	var element= document.getElementById(id);
					element.getElementsByClassName('formerror')[0].innerHTML = error;
				}
				
				function validateForm(){
					
					var formValidated= false;
					                         //form name //fname is name
					var fname=document.forms['myForm']["fname"].value;
					console.log();
					if(fname.length<6){
						seterror("name", "Not a valid name");
						formValidated= false;
					}
					console.log(formValidated);
					return formValidated;
				}
				
				</script>


<!-- <script>
			function validate(val) {
				v1 = document.getElementById("fname");
				flag1 = true;
				if (val >= 1 || val == 0) {
					if (v1.value == "") {
						v1.style.borderColor = "red";
						flag1 = false;
					} else {
						v1.style.borderColor = "green";
						flag1 = true;
					}
				}
			</script> -->


<!-- <script>
			function validate(val) {
				v1 = document.getElementById("fname");
				v2 = document.getElementById("lname");
				v3 = document.getElementById("email");
				v4 = document.getElementById("mob");
				v5 = document.getElementById("job");
				v6 = document.getElementById("ans");

				flag1 = true;
				flag2 = true;
				flag3 = true;
				flag4 = true;
				flag5 = true;
				flag6 = true;

				if (val >= 1 || val == 0) {
					if (v1.value == "") {
						v1.style.borderColor = "red";
						flag1 = false;
					} else {
						v1.style.borderColor = "green";
						flag1 = true;
					}
				}

				if (val >= 2 || val == 0) {
					if (v2.value == "") {
						v2.style.borderColor = "red";
						flag2 = false;
					} else {
						v2.style.borderColor = "green";
						flag2 = true;
					}
				}
				if (val >= 3 || val == 0) {
					if (v3.value == "") {
						v3.style.borderColor = "red";
						flag3 = false;
					} else {
						v3.style.borderColor = "green";
						flag3 = true;
					}
				}
				if (val >= 4 || val == 0) {
					if (v4.value == "") {
						v4.style.borderColor = "red";
						flag4 = false;
					} else {
						v4.style.borderColor = "green";
						flag4 = true;
					}
				}
				if (val >= 5 || val == 0) {
					if (v5.value == "") {
						v5.style.borderColor = "red";
						flag5 = false;
					} else {
						v5.style.borderColor = "green";
						flag5 = true;
					}
				}
				if (val >= 6 || val == 0) {
					if (v6.value == "") {
						v6.style.borderColor = "red";
						flag6 = false;
					} else {
						v6.style.borderColor = "green";
						flag6 = true;
					}
				}

				flag = flag1 && flag2 && flag3 && flag4 && flag5 && flag6;

				return flag;
			}
		</script> -->

</html>