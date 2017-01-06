<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.startup.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>

function validateForm() {
	
	 //for Age
    var ageSS = document.getElementById('age').value;
		    
	     if(isNaN(age)) {
	      alert('age must be in numeric');
	       return false;
	     }
	     // for Contact
		    var contact = document.getElementById('contact').value;
		    
		      if(isNaN(contact)){
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


	    	    //for Salary
	    	    var salary = document.getElementById('salary').value;
	    			    
	    		     if(isNaN(salary)) {
	    		      alert('salary must be in numeric');
	    		       return false;
	    		     }

		}
</script>






     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Port Folio</title>
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
      <script src="bootstrap/jquerydatepicker/jquery-1.12.0.min.js"> </script>
	  <script src="bootstrap/jquerydatepicker/jquery-ui.js"></script>
  <!-- end datepicker css -->
  <script>
  $(function() {
    $("#datepicker" ).datepicker();
  });
  </script>
  <style type="text/css" rel="stylesheet">
  
  body {
    font-family: Arial, Tahoma, sans-serif;
    background: #e2eef4;
    font-size: 62.5%;
    line-height: 1;
    padding-top: 0px;
   }
  </style>
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
  <%
    String finid =(String)session.getAttribute("finid");
    System.out.println("..id folio.jsp...."+finid);
  	if(finid==null)
       {
  %>
  	<jsp:forward page="index.html"></jsp:forward>
  <% 
       }
  	   ResultSet rs = null;
  	try
	{
		AdminModel am = new AdminModel();
		Connection con=am.getDbConnection();
		PreparedStatement ps=con.prepareStatement("select * from adminemp where id=?");
		ps.setString(1, finid);
		rs=ps.executeQuery();
		
		if(rs.next())
			{
	
     %>
    <div class="wrapper">
      <header class="main-header">
             <!-- <%// @include file="asidemenu.jsp" %> -->
        <!-- Logo -->
        <a href="../../index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Sales</b>LTE</span>
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
            Profile
          </h1>
          <ol class="breadcrumb">
            <li><a href="Lgout"><i class="fa fa-dashboard"></i> Logout</a></li>
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
					  <form name="myForm" action="completeportfoliofin" method="post" onsubmit="return validateForm();" enctype="multipart/form-data">
					   
					   <div class="col-2">
					    <label>
					     ID
					      <input type="text" placeholder="ID"  readonly name="id" value="<%=rs.getString(1)%>" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     PASSWORD
					      <input type="password" placeholder="Password" readonly onpaste="off" name="password" value="<%=rs.getString(2)%>" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     NAME
					      <input type="text" placeholder="Name"  name="name" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     AGE
					      <input type="text" placeholder="Age"  required name="age" id="page" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					       <table>
					        <tr>
					         <td>  GENDER</td>
					        </tr>
					         <tr>
					           <td>Male  &nbsp; <input type="radio" name="gender" value="Male">
					              &nbsp; Female &nbsp;&nbsp;<input type="radio" name="gender" value="Female"></td>
					         </tr>
					       </table>
					      </label>
					  </div>
					   <div class="col-2">
					    <label>
					       <table>
					        <tr>
					         <td>  CONTACT	</td>
					        </tr>
					         <tr>
					           <td><label> <input type="text" placeholder="Contact" required name="contact" id="contact" tabindex="1" required></label></td>
					         </tr>
					       </table>
					
					     
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     ADDRESS
					      <input type="text" placeholder="Address" required  name="address" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     EMAIL
					      <input type="email" placeholder="Email" required name="email" tabindex="1" required>
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     PINCODE
					      <input type="text" placeholder="Pincode" required name="pincode" tabindex="1" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     TARGET
					      <input type="text" placeholder="Target" required name="target" tabindex="1" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     PRE SALARY
					      <input type="text" placeholder="Previous Salary" required name="salary" id="salary" tabindex="1" required>
					    </label>
					  </div>
					  
					  <div class="col-2">
					    <label>
					     DATE OF JOINING
					      <input type="text" id="datepicker" placeholder="Date Of Joining"  required autocomplete="off" name="doj" tabindex="3" required>
					    </label>
					  </div>
					  
					  <div class="col-2">
					    <label>
					      PREVIOUS COMPANY
					      <input placeholder="Previous Company" required type="text" name="pre_com" tabindex="4" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      EXPERIENCE
					      <input  type="text" placeholder="Experience" required name="exp" tabindex="6" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      PROJECT NAME
					      <input placeholder="Project Name" type="text" required name="pro_name" tabindex="7" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      DEPARTMENT NAME
					      <input type="text" placeholder="Department Name"  autocomplete="off" readonly name="d_name" value="<%=rs.getString(16) %>"  tabindex="7" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     DESIGNATION
					      <input type="text" placeholder="Designation"  name="designation" required  tabindex="7" required>
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     Photo upload
					      <input type="file" placeholder="ID"  required readonly name="file"  tabindex="1" required>
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
  <%
     System.out.println("..get id after %%executeQuery%% before catch....completefolio.. jsp .. ps..."+rs.getString(1)+"..."+rs.getString(2));
	} 
		else
		{
			out.println("not com");
		}
 }
 catch(Exception e)
 {
	e.printStackTrace();
 }
 %> 
 </div><!-- /.content-wrapper -->
</body>
      <!-- Control Sidebar -->
     <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
<!--     <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script> -->
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>

</html>
