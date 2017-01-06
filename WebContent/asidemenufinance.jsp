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
              <p><%=(String)session.getAttribute("finid") %></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header"><a href="#"> Finance Home </a></li>
         <!--    <li class="treeview">
              <a href="portfolio.jsp">
                <i class="fa fa-pie-chart"></i>
                <span>Complete Your Port Folio</span>
              </a>
            </li>  -->
         <!--  manage employee -->
      <!--       <li class="treeview">
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
                <li><a href=""><i class="fa fa-circle-o"></i> Create New Employee</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Show Employee Detail</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Remove Employee</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Salary Management</a></li>
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
                <li><a href=""> </a>
                			 <li class="treeview">
					              <a href="portfolio.jsp">
					                <i class="fa fa-pie-chart"></i>
					                <span>Complete Your Port Folio</span>
					              </a>
					         </li>
	            			<li class="treeview">
				              <a href="#">
				                <i class="glyphicon glyphicon-user"></i>
				                <span>Manage Project...</span>
				                <i class="fa fa-angle-left pull-right"></i>
				              </a>
				              <ul class="treeview-menu">
				                <li><a href=""><i class="fa fa-circle-o"></i> Add Project</a></li>
				                <li><a href=""><i class="fa fa-circle-o"></i> Remove Project</a></li>
				                <li><a href=""><i class="fa fa-circle-o"></i>Show Project</a></li>
				              </ul>
				            </li>
				            <li>
				              <a href="#">
				                <i class="glyphicon glyphicon-user"></i>
				                <span>Manage Client Detail</span>
				                <i class="fa fa-angle-left pull-right"></i>
				              </a>
				              <ul class="treeview-menu">
				                <li><a href=""><i class="fa fa-circle-o"></i> Add New Client</a></li>
				                <li><a href=""><i class="fa fa-circle-o"></i> Remove Client</a></li>
				                <li><a href=""><i class="fa fa-circle-o"></i>Show Client Detail</a></li>
				              </ul>
				            </li>
				             <li><a href="selectclientproject.jsp"><i class="fa fa-circle-o"></i>Show Client Project</a></li>
			                 <li><a href="showempsale.jsp?role=EMPLOYEE"><i  class="fa fa-circle-o"></i>Show Employee Detail</a></li>
			  			</ul>
            		</li>
            		-->
            		
        <!-- Sales Department End -->  
        
         
         <%
         String finid = (String)session.getAttribute("finid");
        System.out.println("aside  finan..."+finid);
       //  session.setAttribute("folioid",finid);
         %>
         
          <!-- Finance department -->
          <li class="treeview">
              <a href="portfoliofin.jsp">
                <i class="glyphicon glyphicon-user"></i>
                <span>Complete Your Port Folio</span>
              </a>
            </li>
            
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-user"></i>
                <span>Finanace Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="expense.jsp?id=<%=finid%>"><i class="fa fa-circle-o"></i> Add Expense</a></li>
                <li><a href="income.jsp?id=<%=finid%>"><i class="fa fa-circle-o"></i>Add Income</a></li>
                <li><a href="investment.jsp?id=<%=finid%>"><i class="fa fa-circle-o"></i>Investment</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-user"></i> Manage Balance Sheet</a>
                		<ul class="treeview-menu">
				                <li><a href="addasset_liability.jsp"><i class="fa fa-circle-o"></i> Add Assets and Liabilities</a></li>
				                <li><a href="addbalancesheet.jsp"><i class="fa fa-circle-o"></i> Balancesheet</a></li>
				                <li><a href="showbalancesheet.jsp"><i class="fa fa-circle-o"></i>Show Balancesheet</a></li>
				              </ul>
                
                </li>
                <ul>
            </li>
         <!-- End  finanace department -->
         
           <!--  
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Employee</span>
                <span class="label label-primary pull-right">4</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Complete Your Port Folio</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Show Profile</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Apply Leave</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Leave Status</a></li>
              </ul>
            </li>
           -->
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
    