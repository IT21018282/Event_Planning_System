<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&family=Noto+Sans:wght@300&display=swap" rel="stylesheet">

<!-- Style Sheet  -->
<link rel="stylesheet" href="style.css">
<title>Admin Dashboard</title>
<style>
body{
	  z-index:-1;
      background-image:url("./imgs/cover_3_blur.jpg");
	  background-repeat:no-repeat;
	  background-size: cover;
}

hr{
	margin-top:5px;
	margin-bottom:5px;
}

.button
{
	width:200px;
	margin-left:45%;
	margin-top:10%;
	background-color:#070768;
	border:1px outset white;
	padding:5px;
	color:white;
	float:left;
	text-decoration:none;
	text-align:center;
}



</style>
</head>
<body>
<div class="container">
        <nav>
            <div class = "nav-container">
                <div class="logo">
                    <p>CDMN event planning</p>
                </div>
                <div class="nav-menu">
                    <a href="#">Home</a>
                    <a href="#">About</a>
                    <a href="Events.jsp">Services</a>
                    <a href="#">Booking</a>
                    <a href="#">Portrait</a>
                    <a href="#">Contact</a>
                </div>

                <div class="dropdown">
                    <select name="" id="" onchange="location = this.value">
                        <option value="#">Home</option>
                        <option value="#">About</option>
                        <option value="#">Services</option>
                        <option value="#">Booking</option>
                        <option value="#">Portrait</option>
                        <option value="#">Contact</option>
                    </select>
                </div>
            </div class = "nav-container">
        </nav>  
    </div>
			
<center><h1 style='color:white;margin:2px;'>Admin Dashboard</h1></center>
<hr>
<h2><a href='Eventlist.jsp' class="button">Event list</a></h2>
</body>
</html>