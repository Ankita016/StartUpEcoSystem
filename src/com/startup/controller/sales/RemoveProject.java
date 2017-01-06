package com.startup.controller.sales;
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
import javax.servlet.http.HttpSession;

import com.startup.model.AdminModel;


@WebServlet("/removeproject")
public class RemoveProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RemoveProject() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String pid=(String)request.getParameter("pid");
		
		try
		{
			AdminModel am = new AdminModel();
			Connection con=am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("delete from project where pid=?");
			ps.setString(1, pid);
			int i=0;
			i=ps.executeUpdate();
			if(i!=0)
			{
				response.sendRedirect("saleshome.jsp");
			}
			else
			{
				HttpSession s1=request.getSession();
				s1.setAttribute("msg", "project not deleted");
				response.sendRedirect("saleshome.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
