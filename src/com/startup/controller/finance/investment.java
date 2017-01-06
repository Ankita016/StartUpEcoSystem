package com.startup.controller.finance;

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


@WebServlet("/investment")
public class investment extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public investment() {
        super();
       
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();

		
		
		String exp=request.getParameter("exp");
		String amt=request.getParameter("amt");
		String type=request.getParameter("type");
		String date=request.getParameter("date");
		
		out.println(exp+"="+amt+"="+type+"="+date);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root", "root");
			PreparedStatement ps=con.prepareStatement("insert into investment values(?,?,?,?) ");
		
			
			ps.setString(1, exp);
			ps.setString(2, amt);
			ps.setString(3, type);
			ps.setString(4, date);
			
			
			
			int i=0;
			i=ps.executeUpdate();
			
			if(i==0)
			{
				out.println("no insert");
			}
			else
			{
				response.sendRedirect("financehome.jsp");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
