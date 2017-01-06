<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sales | Dashboard</title>
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
   
   
     <!--   registartion form   --> 
  
  
  <script type="text/javascript" src="bootstrap/completefoliocssswitchery.min.js"></script>
   <!--  end registartion form   --> 
    
    <!--  datepicker css -->
	  <link rel="stylesheet" href="bootstrap/jquerydatepicker/jquery-ui.css">
      <script src="bootstrap/jquerydatepicker/jquery-1.12.0.min.js"> </script>
	  <script src="bootstrap/jquerydatepicker/jquery-ui.js"></script>
  <!-- end datepicker css -->
  <script>
 
  function validateForm() {
	
	 // for age
	     var age = document.getElementById('age').value;
		    
	     if(isNaN(age)) {
	      alert('please enter digit in age');
	       return false;
	     }
	   // for phone
	    var phone = document.getElementById('phone').value;
	    
	      if(isNaN(phone)){
	    	   alert('please enter 10 digit number');
	         return false;
	     
	       }

		// for email    	   
	   var x = document.forms["myForm"]["email"].value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Not a valid e-mail address");
	        return false;
	    }
	}
  
  $(function() {
    $("#datepicker" ).datepicker();
  });
  </script>
  
  
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    	<%
    	    String id =(String)session.getAttribute("salesid");
    	  if(id==null)
    	  { 
    	%>
    	   <jsp:forward page="index.html"></jsp:forward>
  		<%} %>
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>Sales</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Sales</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
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
                      <lgall>Member since Nov. 2012</lgall>
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
         <style type="text/css"  rel="stylesheet">
            label > input {
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
			input, textarea {
			    -webkit-font-lgoothing: antialiased;
			    outline: none;
			}
			.in
			{
			   
			}
         </style>
      </header>
      <!-- Left side column. contains the logo and sidebar aside different module -->
       
        <%@include file="asidemenusales.jsp" %>
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
             Dashboard
            <lgall>Sales</lgall>
          </h1>
          <ol class="breadcrumb">
            <li><a href="saleshome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
         <div class="row">
            <div class="col-md-12">
              <!-- The time line -->
              <ul class="timeline">
                
                <li>
 			    <!-- END timeline item -->
 				<div id="wrapper">
 				 <form name="myForm" action="addclient" onsubmit="return validateForm();" method="post" >
					 <fieldset>
					  <div class="container">
					     <div class="row">
						    <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> CId <br> <input type="text" placeholder="Enter  Client Id" name="cid" required></label>	</div>
						    <div class="col-lg-3"><label> NAME <br> <input type="text" placeholder="Enter  Client Name" name="name" required></label></div>
						  </div>
						  <div class="row">
						    <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> EMAIL <br> <input type="text" placeholder="Enter  Email Id" name="email" required></label>	</div>
						    <div class="col-lg-3"><label> AGE <br> <input type="text" placeholder="Enter Age" name="age" id="age" required></label></div>
						  </div>
						  <div class="row">
						    <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> SKYPE ID <br> <input type="text" placeholder="Enter  Skype Id" name="skype" required></label>	</div>
						    <div class="col-lg-3"><label> CONTACT <br> <input type="text" placeholder="Enter  Contact" name="cont" id="phone" required></label></div>
						  </div>
						  <div class="row">
						    <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> COUNTRY <br> <input type="text" placeholder="Enter  Country" name="country" required></label>	</div>
						    <div class="col-lg-3"><label> CITY <br> <input type="text" placeholder="Enter  City" name="city" required></label></div>
						  </div>
						  <div class="row">
						    <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> ADDRESS <br> <input type="text" placeholder="Enter  Address" name="address" required></label>	</div>
						    <div class="col-lg-3"><label>GENDER<table>
								    								<tr> 
								    									<td> Male</td>
								    									<td><input class="in" type="radio" name="gender" value="male" required> </td> 
								    							      	<td> Female</td>
								    									<td><input class="in" type="radio" name="gender" value="female" required> </td> 
								    								</tr>
						    							      </table>  
						    				      </label>
						    		</div>
						  </div>
						  <div class="row">
						  <div class="col-lg-3"><label></label></div>
						    <div class="col-lg-3"> <label> JOINED DATE OF ORDER <br> <input type="text" placeholder="Enter Date" name="order" id="datepicker" required></label>	</div>
						    <div class="col-lg-3"><label> SERVICE <br> <input type="text" placeholder="Enter Service Name" name="service" required></label></div>
						  </div>
						  <div class="row">
						  <div class="col-lg-4"><label></label></div>
						    <div class="col-lg-1"> <label>  <br> <button class="btn btn-primary" type="submit">Submit </button></label>	</div>
						    <div class="col-lg-1"><label> <br> <button class="btn btn-primary" type="reset">Reset</button></label></div>
						  </div>
						</div>
					</fieldset> 
				</form>
				</div>
			 </li>
			 </ul>
			 </div>
			 </div>			 
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
