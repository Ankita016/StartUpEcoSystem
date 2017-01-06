package com.startup.controller.admin;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/hrlogin")
public class hrlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public hrlogin() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession s=request.getSession();
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String id=(String)s.getAttribute("id");
		String pas=(String)s1.getAttribute("pas");
		String role=(String)s2.getAttribute("role");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root", "root");
			PreparedStatement ps=con.prepareStatement("select * from role where role=? ");
			
			ps.setString(1, role);
			ResultSet rs=ps.executeQuery();
			 
			 {
				 if(rs.next())
				 {
					 if(id.equals(rs.getString(1)) && pas.equals(rs.getString(2)))
					 {
					out.println("hello welcome to hr home");
					 response.sendRedirect("hrhome.jsp");
					 }
					 else
					 {
						out.println("sorry u r not a hr");
					 }
				 }
			
			 }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}

}
