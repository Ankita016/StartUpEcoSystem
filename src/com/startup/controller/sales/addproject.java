package com.startup.controller.sales;



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

@WebServlet("/addproject")
public class addproject extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addproject() {
        super();

    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String cpid;
		String pid=request.getParameter("pid");
		String project_name=request.getParameter("name");
		String project_type=request.getParameter("type");
		String technology=request.getParameter("tech");
		String project_cost=request.getParameter("cost");
		String duration=request.getParameter("time");
		String entrydate=request.getParameter("endate");
		String duedate=request.getParameter("dudate");
		String cid=request.getParameter("cid");


		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root", "root");
			PreparedStatement ps=con.prepareStatement("insert into project values(?,?,?,?,?,?,?,?,?)");
			//PreparedStatement ps1=con.prepareStatement("insert into balancesheet2003_2004(date,liablities,amount) values(?,?,?)");
			PreparedStatement ps1=con.prepareStatement("insert into clientproject values(?,?,?)");
			PreparedStatement ps2=con.prepareStatement("insert into income(cpid) values(?)");
			
			
			ps.setString(1, pid);
			ps.setString(2, project_name);
			ps.setString(3, project_type);
			ps.setString(4, technology);
			ps.setString(5, project_cost);
			ps.setString(6, duration);
			ps.setString(7, entrydate);
			ps.setString(8, duedate);
			ps.setString(9, cid);
			
			
			cpid=pid+"-"+cid;

			ps1.setString(1, cpid);
			ps1.setString(2, cid);
			ps1.setString(3, pid);
			

			ps2.setString(1, cpid);

			
			int i=0;
			i=ps.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("addproject.jsp");
			}
			else
			{
				response.sendRedirect("saleshome.jsp");
				
			}
			
			i=ps1.executeUpdate();
			i=ps2.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
