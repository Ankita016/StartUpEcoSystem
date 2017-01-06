<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.startup.model.AdminModel"%>
<%@page import="com.startup.controller.admin.adminlogin"%>
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
			    	
			      alert("Password Error");
			   	 return false;  
			    }
			    

		}
</script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create New Employee</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  
    <link rel="stylesheet" href="bootstrap/tablecss/style.css"/> 
    <script src="bootstrap/tablecss/index.js"></script>
	<!--  -->
 
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="../../index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <%@include file="navbar.jsp" %>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
       <%
        String id = (String)session.getAttribute("id");
     
	     if(id==null)
	     {
	  	%>
	  	 	<jsp:forward page="index.html"></jsp:forward>
	   	<%	   	 
	     }
     %>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background-color:#FFCB60">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Create New Manager
               </h1>
          <ol class="breadcrumb">
            <li><a href="adminhome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
           </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- row -->
          <div class="row">
            <div class="col-md-12">
              <!-- The time line -->
              <ul class="timeline">
                <li>
 			    <!-- END timeline item -->
                <!-- timeline item -->
                
                
   <div id="boxForm">
	  <h2 id="title">My Login Form</h2>
                <form name="mohit" action="CreateManager" onsubmit="return validateForm();">
				<table align="center" border=1>
					<tr>
						<td>enter id:</td>
						<td><input class='text' placeholder="ID" type="text" autocomplete="off" name="id" required></td>
					</tr>
					
					<tr>
						<td>enter passwword:</td>
						<td><input class='text' placeholder="password" type="password" autocomplete="off" id="pass" name="pwd" required></td>
					</tr>
			<%
				try{
					
					AdminModel am = new AdminModel();
					Connection con = am.getDbConnection();
					PreparedStatement ps = con.prepareStatement("select distinct role from role");
					ResultSet rs = ps.executeQuery();
					if(rs.next())
					{
				%>				
					<tr>
						<td>Select Role</td>
						<td>
							<select class='text' name="role">
							<%
							  do
							  {
							%>	
								<option style="background: wheat;"><%=rs.getString(1) %></option>
							<%
							  }while(rs.next());
							%>	
							
							</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input class='button' type="submit" value="Save"></td>
					</tr>
				<%
					}				
					}catch(Exception e)
				{
					e.printStackTrace();
				}
				%>
							</table>
						</form>
						</div>
      <!-- END timeline item -->
      <li>
        <i class="fa fa-clock-o bg-gray"></i>
                </li>
              </ul>
            </div><!-- /.col -->
          </div><!-- /.row -->

          
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

       

      <!-- Control Sidebar -->
      <%@include file="asidemenu.jsp" %>
     
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
