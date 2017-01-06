<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
			function validateForm()
			 {
 
			    <!--for Password alpha numeric no should be 3 and alphabet 5-->    
			    var passw=  /^(?=.*[0-9].*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z].*[a-z].*[a-z]).{8}$/;
			    var z = document.getElementById("pass").value;
			    if(!z.match(passw))   
			    {   
			    	
			      alert("Password Error  (Exactly 5 Character & 3 numeric)");
			   	 return false;  
			    }
			    

		}
</script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>admin Page</title>
      <link rel="stylesheet" href="bootstrap/css/loginstyle.css">
      <link rel="stylesheet" href="bootstrap/animatecss/animate.css">
      
      <style type="text/css">
	  	.box select 
		{
			display: block;
			margin-left: 35px;
			margin: 20px auto;
			padding: 15px;
			background: rgba(0,0,0,0.2);
			color: #fff;
			border: 0;
		}
		.a1
		{
			margin-left: 35px;
			margin-bottom:12px;
			margin: 20px auto;
			padding: 15px;
			background: rgba(0,0,0,0.2);
			color: #fff;
			border: 0;
			
		}
		
      </style>
</head>
     
     
    <%
    ResultSet rs = (ResultSet)session.getAttribute("role");
 	if(rs==null)
 	{
 	%>
 	
 		<jsp:forward page="adminlogin.jsp"></jsp:forward>
 	
 	<%	
 	}
 	else
 	{
	 try
	  {
    	
    %>
  <body>
    <div class="vid-container">
      <video id="Video1" class="bgvid back" autoplay="false" muted="muted" preload="auto" loop>
          <source src="bootstrap/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
      </video>
    <div class="inner-container">
    <video id="Video2" class="bgvid inner" autoplay="false" muted="muted" preload="auto" loop>
      <source src="bootstrap/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
    </video>
    <form action="lgn" onsubmit="return validateForm();">
    <div class="box zoomOutUp butt">
      <h1>Login</h1>
      <input  type="text" placeholder="Username" name="emailid" required>
      <input type="password" placeholder="Password" id="pass" name="password"/ required>
      <select name="role">
      	<%rs.first();
    		do
    		{
    		 %>	
    			<option><%=rs.getString(1)%></option>
    		<%
    		}while(rs.next());
        %>
    </select>
      <button type="submit">Login</button>
  <!--     <p> <span><a class="a1" href="register.jsp"> Sign Up </a></span></p> -->
     </div></form>
    </div>
  </div>

 </body>
  <%	
  }
  catch(Exception e)
  {
	 e.printStackTrace(); 
  }
 }
  %>
    <script src='bootstrap/jquery/jquery.min.js'></script>
	<script src='bootstrap/jquery/jquery-1.10.2.min.js'></script>
    <script src="bootstrap/js/loginindex.js"></script>
 
</html>
