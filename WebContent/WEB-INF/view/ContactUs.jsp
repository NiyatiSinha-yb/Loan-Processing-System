<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">

</head>


<style>

/* Style the header with a grey background and some padding */
.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

/* Style the header links */
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
  background-color: #ddd;
  color: black;
}

/* Style the active/current link*/
.header button.active {
  background-color: dodgerblue;
  color: white;
}

/* Float the link section to the right */
.header-right {
  float: right;
}



.right{
	position: absolute;
	right:350px;
	top: 190px;
}
.left{
	position: absolute;
	left:350px;
	top: 190px;
}
.flip-card {
  background-color: transparent;
  width: 350px;
  height: 350px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: #bbb;
  color: black;
}

/* Style the back side */
.flip-card-back {
  background-color: gray;
  color: white;
  transform: rotateY(180deg);
  margin-top: 100px;
}
</style>
<body>
<form:form method="get" >
<div class="header">
  <a href="#default" class="logo">Contact Us</a>
  
  <div class="header-right">
  <button
								class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="/lpswithhibernate/">Home</button>
 
  </div>
</div>
<div class="w3-container">
<div class="left">
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
     <div class="w3-card-4" >
    <img src="https://pbs.twimg.com/profile_images/1420447393149902851/0A_GbW08_400x400.jpg" alt="Alps" style="width:100%"><br>
    <div class="w3-container w3-center">
      <p><b>Niyati Sinha</b></p>
    </div>
  </div>
    </div>
    <div class="flip-card-back" style="padding: 70px;">
      <h3>Niyati.Sinha@fico.com</h3>
      <p>Software Engineer Intern</p>
      <p>PTSO Team</p>
    </div>
  </div>
</div>
</div>
</div>

<div class="w3-container">
<div class="right">
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
     <div class="w3-card-4" >
    <img src="https://media-exp1.licdn.com/dms/image/C5603AQHNftQMlPzJmA/profile-displayphoto-shrink_200_200/0/1624391232140?e=1632355200&v=beta&t=713agT9ma9cdXyDNdKB1YT9XBcBhSEcr-pJuhwbypbQ" alt="Rayman" style="width:100%">
   <br> <div class="w3-container w3-center">
      <p><b>Rayman Kaur Ahluwalia</b></p>
    </div>
  </div>
    </div>
    <div class="flip-card-back" style="padding: 70px;">
      <h3>Rayman.Ahluwalia@fico.com</h3>
      <p>Software Engineer Intern</p>
      <p>PTSO Team</p>
    </div>
  </div>
</div>
</div>
</div>
</form:form>

</body>
</html>