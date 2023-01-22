<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="servelet.ConnectDB" %>
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
<title>Event list</title>
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

.Back1
{
	width:200px;
	margin-right:42px;
	background-color:#070768;
	border:1px outset white;
	padding:5px;
	color:white;
	float:left;
	text-decoration:none;
	text-align:center;
}

.tableBtn
{
	width:100px;
	height:50px;
	margin:5px;
	background-color:#070768;
	border:1px outset white;
	padding:5px;
	text-decoration:none;
	color:white;
}

table.editTable {
	padding:0px;
	margin:40px;
	text-decoration:none;	
}

table.editTable,table.editTable th,table.editTable td {
  border: 1px solid #070768;
}
table.editTable th {
  width:250px;
  padding:5px;
  text-align: center;
  vertical-align:middle;
  background-color:#070768;
  color: white;
  
}
table.editTable td{
  width:250px;
  padding:20px;
  text-align:center;
  vertical-align:middle;
  color: black;
  background-color:white;
}

table.editTable td.description{
  text-align:left;
  max-width:250px;
  max-height:100px;
  overflow:auto;
  white-space:pre;
}

table.editTable tr:nth-child(even)
{
	background-color: #f2f2f2;
}
</style>

</head>

<%
try{
	Connection connect = ConnectDB.getConnection();

	Statement stmt = connect.createStatement();
	
	
	String sql = "select* from event";
	
	ResultSet rs = stmt.executeQuery(sql);


%>

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
			
<center><h1 style='color:white;margin:2px;'>List of Events</h1></center>
<hr>
<div class="container text-left">
<a href="addEvent.jsp" class="Back" >Add New Event</a>
<a href="dashboard.jsp" class="Back1" >Back</a>
</div>
<br>
<table class="editTable">
		<tr>
			<th>ID</th>
			<th>Type</th>
			<th>Description</th>
			<th>Services</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
					
			<% while (rs.next()) {%>

						<tr>
							<td><%= rs.getString("id")%></td>
							<td class='description'><%= rs.getString("type")%></td>
							<td class='description'><%= rs.getString("description")%></td>
							<td  class='description'><%= rs.getString("services")%></td>
							<td><a href='editEvent.jsp?id=<%= rs.getString("id")%>' class="tableBtn">Edit</a></td>
							<td><a href='deleteEvent?id=<%= rs.getString("id")%>' class="tableBtn">Delete</a></td>
							
						</tr>
						
			<% 	}
			connect.close();	
			}
			catch(Exception e)
			{
				out.println("error");
			} %>	
			</table>
</body>
</html>