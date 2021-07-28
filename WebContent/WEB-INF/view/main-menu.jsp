<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<title>ABC Bank</title>

<style>
.image {
	background-image: url(" https://source.unsplash.com/800x450/?bank,money");
	height: 450px;
	width: 800px;
	border-radius: 50%;
	overflow: hidden;
	-webkit-transform: rotate(30deg);
	right: 300px;
	object-fit: content;
}
.container-fluid{
top: 300px;
}
nav{
margin-right: 20px;
}
</style>



</head>
<body>
	<form:form class="vertical" method="get">
	<div class="container-fluid" align="center">
		<div class="text-gray-700 body-font">
	
			<div
				class="container mx-auto flex flex-wrap p-15 flex-col md:flex-row items-center">
				<a
					class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
					
           <img src="https://www.pngfind.com/pngs/m/154-1544968_bank-abc-logo-abc-bank-logo-png-transparent.png"
							style=" width: 230px; height: 90px;">
							
          
				</a>
				<nav
					class="md:ml-auto flex flex-wrap items-center text-base justify-center">
					<!--  <button class="mr-5 hover:text-gray-900" formaction="customer/contactUs">Contact Us</a> -->
					 <button class="mr-5 hover:text-gray-700 " value="Submit" formaction="/lpswithhibernate/customer/contactUs"><b>Contact Us</b></button> 
					 <button class="mr-5 hover:text-gray-700 " formaction="/lpswithhibernate/customer/help" ><b>Help</b></button>
					 <!-- <button class="mr-5 hover:text-gray-900" formaction="/lpswithhibernate/customer/tnc">Terms & Conditions</button> -->
				</nav>
				
			</div>
		</div>
		<div class="cont">
			<section class="text-gray-700 body-font">
				<div
					class="container mx-auto flex px-10 py-20 md:flex-row flex-col items-center">
					<div
						class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
						<h1
							class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-800">
							ABC Bank <br class="hidden lg:inline-block">
						</h1>
						<h1
							class="title-font sm:text-2xl text-2xl mb-4 font-medium text-gray-600">
							Welcome! Now get your loan approved easily!! <br
								class="hidden lg:inline-block">
						</h1>
						<h1
							class="title-font sm:text-3xl text-3xl mb-4 font-medium text-gray-400">
							Secured, Fast, Robust! <br class="hidden lg:inline-block">
						</h1>

						<p
							class="title-font sm:text-xl text-m mb-4 font-small text-gray-800">
							<br class="hidden lg:inline-block">Welcome to ABC Bank! Now get your loan
							approved immediately using this cool and fully automated
							application.<br> <br>In order to Submit a new loan request,click on
							"Submit an application" link on the right.<br><br> For viewing existing
							loan application's click on "View applicaton" link. </br>
							<br>
						</p>
						<div class="flex justify-center">
							<button
								class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="customer/showForm">Submit an Application</button>
							<button
								class="ml-4 inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="customer/viewForm">View All Applications</button>
						</div>
					</div>
					
						<div class="image"></div>
					
				</div>
			</section>
		</div>

</div>

	</form:form>
</body>
</html>
