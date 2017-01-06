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
   function validateForm() {
	
	      // for Amount
		    var amount = document.getElementById('amount1').value;
		    
		      if(isNaN(amount)){
		    	   alert('please enter amount in number');
		         return false;
		     
		       }
		      
		   // for Amount
			    var amount = document.getElementById('amount2').value;
			    
			      if(isNaN(amount)){
			    	   alert('please enter amount in number');
			         return false;
			     
			       }

			

		}
</script>    
    
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Finance | Add Investment</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  
    <link rel="stylesheet" href="bootstrap/tablecss/style.css"/> 
    <script src="bootstrap/tablecss/index.js"></script>
	
	<!--  datepicker css -->
	  <link rel="stylesheet" href="bootstrap/jquerydatepicker/jquery-ui.css">
      <script src="bootstrap/jquerydatepicker/jquery-1.12.0.min.js"> </script>
	  <script src="bootstrap/jquerydatepicker/jquery-ui.js"></script>
  <!-- end datepicker css -->
  <script>
	  $(function() {
	    $("#datepicker-13").datepicker();
	    $("#datepicker-14").datepicker();
	  });
	
  </script>
 
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
 <%
        String finid1 = (String)session.getAttribute("finid");
     
	     if(finid1==null)
	     {
	  	%>
	  	 	<jsp:forward page="index.html"></jsp:forward>
	   	<%	   	 
	     }
     %>
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="../../index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>FIN</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>FINANCE</b>LTE</span>
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
                  <span class="hidden-xs"><%=finid1%></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                     <%=finid1%>
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
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background-color:#FFCB60">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Add Asset & Liability
               </h1>
          <ol class="breadcrumb">
            <li><a href="financehome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
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
                
                 <div class="table-responsive">
                    <form name="myForm" action="asset_liab" onsubmit="return validateForm();">
						<table  class="table table-condensed" align="center" border="1px solid" style="background: wheat;">
						  <thead>	
							<tr style="background-color:#CD853F;">
								<th>Date</th>
								<th>Liability</th>
								<th>Amount</th>
								<th>Date</th>
								<th>Assets</th>
								<th>Amount</th>
							</tr>	
						</thead>
							<tr>	
								<td><input type="text" name="dt1"  id="datepicker-13" readonly="readonly" required></td>
								<td><input type="text" name="lib1" required ></td>
								<td><input type="text" name="amt1" id="amount1" required></td>
								<td><input type="text" name="dt2" id="datepicker-14" readonly="readonly" required></td>
								<td><input type="text" name="ass1" required></td>
								<td><input type="text" name="amt2" id="amount2" required></td>
							</tr>
							<td align="center" colspan="6"><button class="btn btn-primary" type="submit">Submit</button></td>
						</table>
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
      <%@include file="asidemenufinance.jsp" %>
     
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!--<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script> -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
