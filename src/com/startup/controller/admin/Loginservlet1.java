package com.startup.controller.admin;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/lgn1")
public class Loginservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Loginservlet1() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String id=request.getParameter("emailid");
		String passsword=request.getParameter("password");
		String role=request.getParameter("role");
		
		
		HttpSession s=request.getSession();
		s.setAttribute("id", id);		
		HttpSession s1=request.getSession();
		s1.setAttribute("pas", passsword);		
		HttpSession s2=request.getSession();
		s2.setAttribute("role", role);
		System.out.println(".....lgn......"+(String)s2.getAttribute("role"));
			
		
		if(role.equalsIgnoreCase("Admin"))
			{
				
				
				response.sendRedirect("adminlogin");
			}
			
			else if(role.equalsIgnoreCase("Hr"))
			{
				
				
				response.sendRedirect("hrlogin");
			}
			
			else if(role.equalsIgnoreCase("Finance"))
			{
				
				response.sendRedirect("financelogin");
			}
			
			else
			{
				
				response.sendRedirect("saleslogin");
			}
			
			
		
		
		
	}

}
