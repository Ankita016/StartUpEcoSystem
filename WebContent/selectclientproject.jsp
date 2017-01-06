<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.startup.model.AdminModel"%>
<%@page import="com.startup.controller.admin.adminlogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Sales | Show Project</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  
    <link rel="stylesheet" href="bootstrap/tablecss/style.css"/> 
    <script src="bootstrap/tablecss/index.js"></script>
	<!--  -->
   <style type="text/css"  rel="stylesheet">
          
		.S {
				    display: inline-block;
				    position: relative;
				    width: 100%;
				    height: 27px;
				    line-height: 27px;
				    margin: 5px -5px 0;
				    padding: 7px 5px 3px;
				    border: none;
				    outline: none;
				    color: #555;
				    font-family: 'Helvetica Neue', Arial, sans-serif;
				    font-weight: bold;
				    font-size: 14px;
				    opacity: .6;
				    transition: all linear .3s;
		}
		.S {
		    -webkit-font-lgoothing: antialiased;
		    outline: none;
		}
		
         </style>
 
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <%
      String salesid = (String)session.getAttribute("salesid");
  		System.out.println("sales .remove client...."+salesid);
	  if(salesid==null)
	  {
	   %>
	     <jsp:forward page="index.html"></jsp:forward>
	   <%  
	  }
  %>
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>Sales </b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Sales </b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
          <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs"><%=(String)session.getAttribute("salesid") %></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      <%=(String)session.getAttribute("salesid") %>
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  
                  <!-- Menu Body -->
                <!-- 
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                 -->
                  <!-- Menu Footer-->
                   
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="Lgout" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              
            </ul>
          </div>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background-color:#FFCB60">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Select  Project
                </h1>
          <ol class="breadcrumb">
            <li><a href="saleshome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"><a href='Lgout'>LOGOUT</a></li>
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
                
                
  	 <%!
		ResultSet rs=null;
		%>

	  <%
		
	  try
	  {
	    AdminModel am = new AdminModel();
		Connection con=am.getDbConnection();
		PreparedStatement ps=con.prepareStatement("select * from clientproject");
		ResultSet rs=ps.executeQuery();
			if(rs.next())
	 		{
	    %>
           <form action="showclientproject.jsp" >
           <div class="container">
			  <div class="row">
			    <div class="col-lg-3"><label></label></div>
			    <div class="col-lg-3">
			            <label> <h4>Select Client ProjectID </h4> 
   							<select name=cpid class='S' style="width:80%">
							<% 
								do{
								%>
									<option><%= rs.getString(1)%></option>
								<% 
								}while(rs.next());
 		                     %>
   							</select>
   					  </label>
   				</div>
			 </div>
			 <div class="row">
				  <div class="col-lg-3"><label></label></div>
				    <div class="col-lg-3"> <label>  <br> <button class="btn btn-primary" type="submit">Submit </button></label>	</div>
				  
				  </div>
			</div>
          </div> 
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
      <%@include file="asidemenusales.jsp" %>
      
     
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
