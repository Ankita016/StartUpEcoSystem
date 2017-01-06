<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Home</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    
  </head>
  
   <%
       String id = (String)session.getAttribute("id");
   		 if(id==null)
		 {
	  %>
	   <jsp:forward page="index.html"></jsp:forward>
	 <% 
		 }
   
   %>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Admin</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
       <%@include file="navbar.jsp" %>
        
      </header>
      <!-- Left side column. contains the logo and sidebar aside different module -->
      
        <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Alexander Pierce</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header"><a href="#"> Admin Home </a></li>
         <!--  manage employee -->
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Manage Employee</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
              	 <li><a href="createnewmanager.jsp"><i class="fa fa-circle-o"></i> Create New Manager</a></li>
                <li><a href="showmanagerprofile.jsp"><i class="fa fa-circle-o"></i> Show Manager Profile</a></li>
                <li><a href="deletemanagerprofile.jsp"><i class="fa fa-circle-o"></i>Delete Manager Profile</a></li>
                <li><a href="showbalancesheetadmin.jsp"><i class="fa fa-circle-o"></i>BalaceSheet</a></li>
              </ul>
            </li>
         <!-- end manage employee -->
         
          <!-- HR department -->
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Hr</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="showempadmin.jsp"><i class="fa fa-circle-o"></i> Show Employee Detail</a></li>
                <li><a href="removeempadmin.jsp"><i class="fa fa-circle-o"></i>Remove Employee</a></li>
              </ul>
            </li>
         <!-- End  HR department -->
         
         <!-- Sales department -->
           
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Sales Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"> </a>
                			<li class="treeview">
					              <a href="#">
					                <i class="glyphicon glyphicon-user"></i>
					                <span>Manage Project...</span>
					                <i class="fa fa-angle-left pull-right"></i>
					              </a>
					              <ul class="treeview-menu">
					                <li><a href="removeprojectadmin.jsp"><i class="fa fa-circle-o"></i> Remove Project</a></li>
					                <li><a href="showprojectadmin.jsp"><i class="fa fa-circle-o"></i>Show Project</a></li>
					              </ul>
				            </li>
				            <li>
				              <a href="#">
				                <i class="glyphicon glyphicon-user"></i>
				                <span>Manage Client Detail</span>
				                <i class="fa fa-angle-left pull-right"></i>
				              </a>
				              <ul class="treeview-menu">
				                <li><a href="removeclientadmin.jsp"><i class="fa fa-circle-o"></i> Remove Client</a></li>
				                <li><a href="showclientadmin.jsp"><i class="fa fa-circle-o"></i>Show Client Detail</a></li>
				              </ul>
				            </li>
				             <li><a href="#"><i class="fa fa-circle-o"></i><p data-toggle="modal" data-target="#myModal1">Show Client Project</p></a></li>
			                 <li><a href="showempsaleadmin.jsp?role=EMPLOYEE"><i  class="fa fa-circle-o"></i>Show Employee Detail</a></li>
			  			</ul>
            		</li>         <!-- End  HR department -->
          <!-- Finance department -->
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Finanace Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="showbalancesheetadmin.jsp"><i class="fa fa-circle-o"></i> Show Balance Sheet</a></li>
                
              </ul>
            </li>
         <!-- End  finanace department -->
          <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Employee</span>
                <span class="label label-primary pull-right">1</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="showprofileadmin.jsp"><i class="fa fa-circle-o"></i> Show Profile</a></li>
              </ul>
            </li>   
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
        <%@include file="modelsale.jsp" %>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="background-image:url('bootstrap/images/create_emp.jpg'); background-repeat:no-repeat|repeat-y;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->
                <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-5 connectedSortable">

              <!-- Map box -->
              <!-- Calendar -->
              <div class="box box-solid bg-green-gradient">
            </section><!-- right col -->
          </div><!-- /.row (main row) -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    

      <!-- Control Sidebar -->
      <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
