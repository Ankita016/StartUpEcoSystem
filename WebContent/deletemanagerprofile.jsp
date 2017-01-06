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
                
                
  	 <%
		ResultSet rs=null;
		String id=(String)session.getAttribute("id");
		
		 if(id==null)
		 {
	  %>
	   <jsp:forward page="index.html"></jsp:forward>
	<% 
		 }
		
		try
		{
			AdminModel am = new AdminModel();
			Connection con=am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("select * from adminemp ");
			
							
			rs=ps.executeQuery();
			
			if(rs.next())
				{			
	%>
           <form action="" >
				<fieldset>
					<legend>Portfolio</legend>
					 <div class="table-responsive">
						<table  class="table-condensed " align="center" border="1px solid" style="background: wheat;">
						  <thead>	
							<tr style="background-color:#CD853F;">
								<th>Id</th>
								<th>Password</th>
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Contact</th>
								<th>Address</th>
								<th>Pincode</th>
								<th>Email</th>
								<th>Target</th>
								<th>Salary</th>
								<th>Date_of_joining</th>
								<th>Previous_Company</th>
								<th>Experience</th>
								<th>Work_on_Project_Name</th>
								<th>Department_name</th>
								<th>Designation</th>
								<th></th>
							</tr>	
						</thead>
							<%
							
							 do
							 {
								 %>
							 
							<tr>	
								<td><%= rs.getString(1) %></td>
								<td><%= rs.getString(2) %></td>
								<td><%= rs.getString(3) %></td>
								<td><%= rs.getString(4) %></td>
								<td><%= rs.getString(5) %></td>
								<td><%= rs.getString(6) %></td>
								<td><%= rs.getString(7) %></td>
								<td><%= rs.getString(8) %></td>
								<td><%= rs.getString(9) %></td>
								<td><%= rs.getString(10) %></td>
								<td><%= rs.getString(11) %></td>
								<td><%= rs.getString(12) %></td>
								<td><%= rs.getString(13) %></td>
								<td><%= rs.getString(14) %></td>
								<td><%= rs.getString(15) %></td>
								<td><%= rs.getString(16) %></td>
								<td><%= rs.getString(17) %></td>
							    <td><a  href="deleteprofile?id=<%=rs.getString(1)%>"><button type="button" class="glyphicon glyphicon-trash btn btn-danger">Delete Profile</button></a></td>
							
							</tr>
							
							<%
							 }while(rs.next());
							%>
						</table>
				   </div>
				</fieldset>
			</form>
		<%
			}
		else
		{
			%>
				<h>table is empty</h>
			<%
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}						
	%>
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
