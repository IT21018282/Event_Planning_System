<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&family=Noto+Sans:wght@300&display=swap" rel="stylesheet">

<!-- Style Sheet  -->
<link rel="stylesheet" href="style.css">
<title>Event Adding Page</title>
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

form.eventform{
	background-color:rgba(0,0,0,0.5);
	color:white;
	text-shadow: 1px 1px #000000;
	width:30%;
	height:400px;
	margin:auto;
	position:relative;
	padding:3%;
	margin-top:105px;
	border-radius:5%;
	float:none;
	
}

table.formtbl{
	width:100%;
	height:100%;
	margin:auto;
	position:absolute;
	left:0px;
	top:0px;
	padding:1%;
	
	
	
	
}

table.formtbl td{
	padding:1px;
	padding-left:6%;
	padding-right:6%;
	
	
}


.box
{
	width:100%;
	border-radius:5px;
	border:1px solid black;
	
}

.box1
{
	width:98%;
	border-radius:5px;
	border:1px solid black;
}


.Back
{
	width:200px;
	margin-left:42px;
	background-color:#070768;
	border:1px outset white;
	padding:5px;
	color:white;
	float:left;
	text-decoration:none;
	text-align:center;
}



.btn
{
	width:100px;
	margin:10px;
	background-color:#070768;
	border:1px outset white;
	border-radius:5px;
	padding:10px;
	text-decoration:none;
	color:white;
}

@media only screen and (max-width:830px) {
	
 form.eventform
 {
	 width:50%;
 }
}
@media only screen and (max-width:750px) {
 .btn
{
	margin:5px;
	width:80px;
	padding:5px;
} 

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
<center><h1 style='color:white;margin:2px;'>ADD Event Form</h1></center>
<hr>
<a href="Eventlist.jsp" class="Back">Back to Eventlist</a>
		
	
		<form class="eventform" action="addEvent" method="post"  id="bookingform">

		  <table class="formtbl">
		  <tr>
		  <td><label>Event Type</label></td>
		  <td>
			<select name="eventType" id="dSpecial" class="box"  required>
					<option>-Select Type-</option>
					<option>Weddings</option>
					<option>Birthday Parties</option>	
					<option>Batch Reunions</option>
					<option>Corporate Events</option>
					<option>Musical Shows</option>	
					<option>Outbound trips and Trainings</option>
					<option>Proposal and Anniversary</option>	
					<option>Baby Shower|Bridal Shower</option>
					<option>Charity Events</option>				
			</select>
		  </td>
		  </tr>
		  <tr>
		  <td><label>Event Description</label></td>
		  <td colspan="2"><input type="text" name="eventDescription" id="patientName" placeholder="Eneter the event description" class="box1" required></td>
		  </tr>
		  <tr >
		  <tr>
		  <td><label>Services Provide</label></td>
		  <td ><textarea name="services"  id="packageDetails" placeholder="Enter the service provide" rows="13" cols="60" class="box1" required></textarea></td>
		  </tr>
		  <tr >
		  <td colspan="2"><center><input type="submit" value="ADD Now"  class="btn" name="sub">
		  <a href='addEvent.jsp' class="btn">Cancel</a></td></center></td>
		  </tr>
		  </table>
		</form>
		
</body>
</html>