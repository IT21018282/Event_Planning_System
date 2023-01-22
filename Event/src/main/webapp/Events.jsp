<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="servelet.ConnectDB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&family=Noto+Sans:wght@300&display=swap" rel="stylesheet">

<!-- Style Sheet  -->
<link rel="stylesheet" href="style.css">
<style>

hr{
	margin-top:5px;
	margin-bottom:5px;
}
.Scontainer {
  position: relative;
  text-align: center;
  width:30%;
  height:500px;
  float:left;
  margin:1.3%;
  border:0px;
  background-color:black;
}


.cen {
  color: white;
  position: absolute;
  bottom: 3%;
  left: 36%;
  transform: translate(-35%, -3%);
  border:0px;
  height:200px;
  padding:3%;
  width:80%;
 background-color: rgba(0, 0, 0, 0.5);
 text-align:left;
 overflow: auto;
}


.centered {
  position: absolute;
  top: 10%;
  left:10%;
  transform: translate(-10%, -25%);
  border:0px;
  width:85%;
  margin:5%;
 color: white;
  
}

.pic1
{
width:100%;
height:100%;
opacity:0.5;
}

h3{
color:red;
margin-bottom:10px;
}

p{
margin-top:20px;
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
                    <a href="dashboard.jsp">Admin</a>
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

<%
try{
	Connection connect = ConnectDB.getConnection();

	Statement stmt = connect.createStatement();
	
	
	String sql = "select* from event";
	
	ResultSet rs = stmt.executeQuery(sql);


%>
<h1 style='color:red;margin:2px;'><center>Services</center></h1>
<hr>
<% while (rs.next()){
	
	

	if(rs.getString("type").equals("Weddings"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/1.jpg'  class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-male' style='font-size:48px;color:white'></i> <i class='fas fa-female' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Birthday Parties"))
	{
		out.print("<div class='Scontainer'><img src='pictures/2.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-gift' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Batch Reunions"))
	{
		out.print("<div class='Scontainer'><img src='pictures/3.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-glass-cheers' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Corporate Events"))
	{
		out.print("<div class='Scontainer'><img src='pictures/4.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-bullhorn' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Musical Shows"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/5.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-music' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Outbound trips and Trainings"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/6.jpg'  class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-map-marked' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	 }
	else if(rs.getString("type").equals("Proposal and Anniversary"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/7.jpg'  class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-heart' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Baby Shower|Bridal Shower"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/8.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-baby-carriage' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
	else if(rs.getString("type").equals("Charity Events"))
	{ 
		out.print("<div class='Scontainer'><img src='pictures/9.jpg'   class='pic1'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-hands-helping' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}

	else 
	{ 
		out.print("<div class='Scontainer'><img src='pictures/10.jpg'   style='width:100%;height:100%;'><div class='centered'><h1>"+ rs.getString("type")+"</h1><i class='fas fa-gifts' style='font-size:48px;color:white'></i><p>"+rs.getString("description")+"</p></div>");
		out.print("<div class='cen'><h3>Our Cluster Of Services Comprises Of:</h3>");
		String a =rs.getString("services");
	  	do{
	  		out.print("<p>"+a.substring(0,(a.indexOf(".")+1))+"</p>"); 
		  a = a.substring((a.indexOf(".")+1)); 
		  a=a.trim();
	  	}while(a.indexOf(".")!=-1);
	  	
	  	out.print("</div></div>");
	}
		}
connect.close();	}
catch(Exception e)
{out.println("error");
}%>	

</body>
</html> 