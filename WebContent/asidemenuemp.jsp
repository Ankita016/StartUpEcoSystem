<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
  <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><%=(String)session.getAttribute("empid") %></p>
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
            <li class="header"><a href="#"> Employee Home </a></li>
         <!--    <li class="treeview">
              <a href="portfolio.jsp">
                <i class="fa fa-pie-chart"></i>
                <span>Complete Your Port Folio</span>
              </a>
            </li>  -->
         <!--  manage employee -->
          <!--  
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Manage Employee</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Create New Manager</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Show Manager Profile</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Delete Manager Profile</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>BalaceSheet</a></li>
              </ul>
            </li>
           --> 
         <!-- end manage employee -->
         
          <!-- HR department -->
         <!--
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Hr</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
              role
              <ul class="treeview-menu">
                <li><a href="createprofile.jsp"><i class="fa fa-circle-o"></i> Create New Employee</a></li>
                <li><a href="showemp.jsp"><i class="fa fa-circle-o"></i> Show Employee Detail</a></li>
                <li><a href="removeemp.jsp?role=<%="EMPLOYEE"%>"><i class="fa fa-circle-o"></i>Remove Employee</a></li>
                <li><a href="salary.jsp"><i class="fa fa-circle-o"></i>Salary Management</a></li>
              </ul>
            </li>
            
            -->
         <!-- End  HR department -->
         <!-- Sales department -->
         <!--
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Sales Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Add Project</a></li>
                			<li class="treeview">
				              <a href="#">
				                <i class="glyphicon glyphicon-user"></i>
				                <span>Manage Project...</span>
				                <i class="fa fa-angle-left pull-right"></i>
				              </a>
				              <ul class="treeview-menu">
				                <li><a href="#"><i class="fa fa-circle-o"></i> Add New Client</a></li>
				                <li><a href="#"><i class="fa fa-circle-o"></i> Remove Client</a></li>
				                <li><a href="#"><i class="fa fa-circle-o"></i>Show Client Detail</a></li>
				              </ul>
				            </li>
                <li><a href="#l"><i class="fa fa-circle-o"></i>Show Employee</a></li>
              </ul>
            </li>
          -->  
         <!-- End  HR department -->
         
          <!-- Finance department -->
          <!--  <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Finanace Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Add Expense</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Manage Balance Sheet</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Salary Expense</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Add Income</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Investment</a></li>
              </ul>
            </li>
            -->
         <!-- End  finanace department -->
         
            <%
	         	String emprole = (String)session.getAttribute("emprole");
	         	String empid = (String)session.getAttribute("empid");
	         	session.setAttribute("folioid", empid);      	
	         %>
      		
      		<%
      		%>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Employee</span>
                <span class="label label-primary pull-right">4</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="portfolio.jsp"><i class="fa fa-circle-o"></i> Complete Your Port Folio</a></li>
                <li><a href="showprofile.jsp?empid=<%=empid %>"><i class="fa fa-circle-o"></i> Show Profile</a></li>
                <li><a href="applyleave.jsp?empid=<%=empid %>"><i class="fa fa-circle-o"></i> Apply Leave</a></li>
                <li><a href="checkemployee.jsp?role=<%=emprole %>&<%=empid%>"><i class="fa fa-circle-o"></i> Leave Status</a></li>
              </ul>
            </li>
           
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
    