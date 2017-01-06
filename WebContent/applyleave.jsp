<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.startup.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	  $( "#datepicker-13" ).datepicker();
      $( "#datepicker-14" ).datepicker();
      $( "#datepicker-15" ).datepicker();
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
    String eempid =(String)session.getAttribute("empid");
  	
    System.out.println("..id folio.jsp...."+eempid);
  	if(eempid==null)
       {
  %>
  	<jsp:forward page="index.html"></jsp:forward>
  	
  <% 
       }
  	   ResultSet rs = null;
  	try
	{
  		int bal=12,nol=0;
		AdminModel am = new AdminModel();
		Connection con = am.getDbConnection();
		PreparedStatement ps=con.prepareStatement("select * from adminemp where id=?");
		ps.setString(1, eempid);
		 rs=ps.executeQuery();
		if(rs.next())
			{
	
     %>
    <div class="wrapper">
      <header class="main-header">
             <%@include file="asidemenuemp.jsp" %>
        <!-- Logo -->
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>Emp</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Employee</b>LTE</span>
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
            <li><a href="emphome.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
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
					  <form action="applyleave" >
					   
					   <div class="col-2">
					    <label>
					     ID
					      <input type="text" placeholder="ID"  readonly name="id" value="<%=rs.getString(1)%>" tabindex="1">
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     NAME
					      <input type="text" placeholder="Name" readonly name="name" value="<%=rs.getString(3)%>" tabindex="1">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      DEPARTMENT NAME
					      <input type="text" placeholder="Department Name"  autocomplete="off" readonly name="d_name" value="<%=rs.getString(16) %>"  tabindex="7">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     DESIGNATION
					      <input type="text" placeholder="Designation"  name="designation" autocomplete="off" readonly value="<%=rs.getString(17) %>"required  tabindex="7">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      DATE FROM
					      <input type="text" id="datepicker-14" placeholder="Date From"  required autocomplete="off" name="fdate" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					      DATE TO
					      <input type="text" id="datepicker-15" placeholder="Date To"  required autocomplete="off" name="tdate" tabindex="3">
					    </label>
					  </div>
					   <div class="col-2">
					    <label>
					     APPLY DATE
					      <input type="text" id="datepicker-13" placeholder="Apply Date"  required autocomplete="off" name="adate" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     NUMBER OF LEAVE
					      <input type="text"  placeholder="Number Of Leave"  required   name="no" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     TOTAL LEAVE
					      <input type="text"  placeholder="Total Leave" readonly required  name="tno" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     BALANCE LEAVE
					      <input type="text" id="datepicker-13" placeholder="Balance Leave"  readonly required autocomplete="off" name="bno" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     LEAVE TYPE
					      <input type="text" id="datepicker-13" placeholder="Leave Reason"   required  name="type" tabindex="3">
					    </label>
					  </div>
					  <div class="col-2">
					    <label>
					     STATUS
					      <input type="text" id="datepicker-13" placeholder="Balance Leave"  readonly autocomplete="off" name="status" tabindex="3">
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
