package com.startup.controller.admin;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.startup.model.AdminModel;
@WebServlet("/RCA")
public class RemoveClientAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RemoveClientAdmin() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String cid=request.getParameter("cid");
		int i=0;
		try
		{
			AdminModel am = new AdminModel();
		    i = am.removeClient(cid);	
			if(i!=0)
			{
				response.sendRedirect("adminhome.jsp");
			}
			else
			{
				response.sendRedirect("removeclient.jsp");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
