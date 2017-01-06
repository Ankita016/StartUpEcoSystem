package com.startup.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.startup.model.AdminModel;


@WebServlet("/REA")
public class RemoveEmployeeadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RemoveEmployeeadmin() {
        super();
       
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("id");
		System.out.println("@!@!@.."+id);
	
		try
		{
			AdminModel am = new AdminModel();
			Connection con=am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("delete from adminemp where id=? ");
			PreparedStatement ps1=con.prepareStatement("delete from role where id=? ");
			
			ps.setString(1, id);
			ps1.setString(1, id);
			
			int i=0;
			i=ps.executeUpdate();
			i=ps1.executeUpdate();
			if(i!=0)
			{
				response.sendRedirect("adminhome.jsp");
			}
			else
			{
				out.println("Account is not deleted");
				out.println("<h4><a href=hrhome.jsp>Home</a></h4>");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
