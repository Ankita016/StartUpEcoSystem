package com.startup.controller.admin;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.startup.model.AdminModel;
import com.startupecosystem.bean.LoginBean;


@WebServlet("/financelogin")
public class financelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	
		
    public financelogin() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession s=request.getSession();
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String id=(String)s.getAttribute("id");
		String password=(String)s1.getAttribute("pas");
		String role=(String)s2.getAttribute("role");
		
		try
		{
			LoginBean b = new LoginBean();
			b.setId(id);
			b.setPassword(password);
		
			
			System.out.println("hello");
			AdminModel am = new AdminModel();
			ResultSet rs = am.financeLogin(b);
			System.out.println("fin ser.....");
			 	 if(rs.next())
				 {
					 System.out.println(rs.getString(1)+"..finsucc.."+rs.getString(2));
			 		 if(id.equals(rs.getString(1)) && password.equals(rs.getString(2)))
					 {
					  out.println("hello welcome to finance page");
					// response.sendRedirect("financehome.html");
					 }
					 else
					 {
						 out.println("sorry u r not a finance");
					 }
				 }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}

}
