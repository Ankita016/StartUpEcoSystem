package com.startup.controller.admin;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.startup.model.AdminModel;


@WebServlet("/saleslogin")
public class saleslogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public saleslogin() {
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
			AdminModel am = new AdminModel();
			Connection con = am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("select * from role where role=? ");
			
			ps.setString(1, role);
			ResultSet rs=ps.executeQuery();
			 
			 {
				 if(rs.next())
				 {
					 if(id.equals(rs.getString(1)) && pas.equals(rs.getString(2)))
					 {
					 out.println("hello welcome to sales home");
					 response.sendRedirect("saleshome.html");
					 }
					 else
					 {
						out.println("sorry u r not a sales");
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
