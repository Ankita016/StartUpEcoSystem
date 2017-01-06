<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Port Folio 2</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <!--   registartion form   --> 
  <link rel="stylesheet" type="text/css" media="all" href="bootstrap/completefoliocss/styless.css">
  <link rel="stylesheet" type="text/css" media="all" href="bootstrap/completefoliocssswitchery.min.css">
  <script type="text/javascript" src="bootstrap/completefoliocssswitchery.min.js"></script>
   <!--  end registartion form   --> 

  <!--  datepicker css -->
	  <link rel="stylesheet" href="bootstrap/jquerydatepicker/jquery-ui.css">
  <script src="bootstrap/jquerydatepicker/jquery-1.10.2.js"></script>
  <script src="bootstrap/jquerydatepicker/jquery-ui.js"></script>
  <!-- end datepicker css -->
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
             <%@include file="asidemenu.jsp" %>
     
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
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Create Manager Employee
         
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
 				<div id="wrapper">
					  <form action="completeportfolio">
					  <div class="col-2">
					    <label>
					     TARGET
					      <input type="text" placeholder="Target"  name="target" tabindex="1">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     PRE SALARY
					      <input type="text" placeholder="Password"  name="salary" tabindex="1">
					    </label>
					  </div>
					  
					  <div class="col-3">
					    <label>
					     DATE OF JOINING
					      <input type="text" id="datepicker" placeholder="text" type="text" name="doj" tabindex="3">
					      <p>Date: <input type="text" id="datepicker"></p>
					    </label>
					  </div>
					  
					  <div class="col-3">
					    <label>
					      PREVIOUS COMPANY
					      <input placeholder="Previous Company" type="text" name="pre_com" tabindex="4">
					    </label>
					  </div>
					  <div class="col-4">
					    <label>
					      EXPERIENCE
					      <input  type="text" placeholder="Experience" name="exp" tabindex="6">
					    </label>
					  </div>
					  <div class="col-4">
					    <label>
					      PROJECT NAME
					      <input placeholder="Project Name" type="text" name="pro_name" tabindex="7">
					    </label>
					  </div>
					  <div class="col-4">
					    <label>
					      DEPARTMENT NAME
					      <input type="text" placeholder="Department Name"  name="email" tabindex="7">
					    </label>
					  </div>
					  <div class="col-4">
					    <label>
					     DESIGNATION
					      <input type="text" placeholder="Designation"  name="designation" required maxlength="10" tabindex="7">
					    </label>
					  </div>
					  
					  <div class="col-submit">
					    <button type="submit" class="btn btn-primary">SAVE AND CONTINUE</button>
					    <label></label>
					    <button type="reset" class="btn btn-primary">RESET</button>
					  </div>
				</form>
 			 </div>
<script type="text/javascript">
var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

elems.forEach(function(html) {
  var switchery = new Switchery(html);
});
</script>
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
     
     <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
