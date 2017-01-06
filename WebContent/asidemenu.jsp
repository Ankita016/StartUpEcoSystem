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
                <i class="fa fa-pie-chart"></i>
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
				                <li><a href="showclientadmin.jsp?"><i class="fa fa-circle-o"></i>Show Client Detail</a></li>
				              </ul>
				            </li>
				             <li><a href="#"><i class="fa fa-circle-o"></i><p data-toggle="modal" data-target="#myModal1">Show Client Project</p></a></li>
			                 <li><a href="showempsaleadmin.jsp?role=EMPLOYEE"><i  class="fa fa-circle-o"></i>Show Employee Detail</a></li>
			  			</ul>
            		</li>
         <!-- End  HR department -->
         
          <!-- Finance department -->
            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Finanace Department</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Show Balance Sheet</a></li>
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
     