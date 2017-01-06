package com.startup.controller.admin;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.startup.model.AdminModel;
 @WebServlet("/Rolefetch")
public class Rolefetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Rolefetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminModel am  =  new AdminModel();
		try 
		{
			ResultSet rs = am.roleAdmin();
			if(rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("role", rs);
				response.sendRedirect("adminlogin.jsp");
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		} 
		
	}

}
