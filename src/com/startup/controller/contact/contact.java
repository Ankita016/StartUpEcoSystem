package com.startup.controller.contact;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.startup.model.AdminModel;

/**
 * Servlet implementation class CreateManager
 */
@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public contact() {
        super();
        // TODO Auto-generated constructor stub
    }
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			response.setContentType("text/html");
			
			
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String subject=request.getParameter("subject");
			
			int i=0;
			try
			{
				AdminModel am = new AdminModel();
				Connection con= am.getDbConnection();
				PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?)");
		//		PreparedStatement ps1=con.prepareStatement("insert into role(id,password,role) values(?,?,?)");
				
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, subject);
				 i=ps.executeUpdate();
				 
				if(i!=0)
				{
					response.sendRedirect("index.html");
				}
				else
				{
					//s.setAttribute("fail", "Create Password is Unsuccessful.. due to server failure...");
					
					response.sendRedirect("contact.html");
				}
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}

}