package com.startup.controller.employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/applyleave")
public class applyleave extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public applyleave() {
        super();

    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String department_name=request.getParameter("dname");
		String designation=request.getParameter("desig");
		String applydate=request.getParameter("adate");
		String date_from=request.getParameter("fdate");
		String date_to=request.getParameter("tdate");
		String no_of_leave=request.getParameter("no");
		String total_leave=request.getParameter("tno");
		String balance_leave=request.getParameter("bno");
		String leave_type=request.getParameter("type");
		String status=request.getParameter("status");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root", "root");
			PreparedStatement ps=con.prepareStatement("insert into leaves values(?,?,?,?,?,?,?,?,?,?,?,?)");
			//PreparedStatement ps1=con.prepareStatement("insert into balancesheet2003_2004(date,liablities,amount) values(?,?,?)");
			
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, department_name);
			ps.setString(4, designation);
			ps.setString(5, applydate);
			ps.setString(6, date_from);
			ps.setString(7, date_to);
			ps.setString(8, no_of_leave);
			ps.setString(9, total_leave);
			ps.setString(10, balance_leave);
			ps.setString(11, leave_type);
			ps.setString(12, status);
			
			
			//ps1.setString(1, date);
			//ps1.setString(2, lia);
			//ps1.setString(3, amt);
			
			
			int i=0;
			i=ps.executeUpdate();
			
			if(i==0)
			{
				
				response.sendRedirect("applyleave.jsp");
			}
			else
			{
				
				response.sendRedirect("emphome.jsp");
			}
			
			//i=ps1.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
