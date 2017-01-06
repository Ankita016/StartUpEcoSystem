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

import com.startup.model.AdminModel;


@WebServlet("/addincome")
public class addincome extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public addincome() {
        super();
       
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();

		
		
		String exp=request.getParameter("exp");
		String amt=request.getParameter("amt");
		//String type=request.getParameter("type");
		String date=request.getParameter("date");
		System.out.println(exp+"="+amt+"="+date);
		try
		{
			AdminModel am = new AdminModel();
			Connection con=am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("insert into income values(?,?,?) ");
		
			
			ps.setString(1, exp);
			ps.setString(2, amt);
			//ps.setString(3, type);
			ps.setString(3, date);
			
			
			
			int i=0;
			i=ps.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("income.jsp");
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
