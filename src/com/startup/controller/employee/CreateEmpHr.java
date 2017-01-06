package com.startup.controller.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.startup.model.AdminModel;

/**
 * Servlet implementation class CreateManager
 */
@WebServlet("/CreateEmpHr")
public class CreateEmpHr extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CreateEmpHr() {
        super();
        // TODO Auto-generated constructor stub
    }
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			response.setContentType("text/html");
			
			
			String id=request.getParameter("id");
			String pas=request.getParameter("pwd");
			String role=request.getParameter("role");
			int i=0;
			try
			{
				AdminModel am = new AdminModel();
				Connection con= am.getDbConnection();
				PreparedStatement ps=con.prepareStatement("insert into adminemp(id,password,department_name) values(?,?,?)");
				PreparedStatement ps1=con.prepareStatement("insert into role(id,password,role) values(?,?,?)");
				
				ps.setString(1, id);
				ps.setString(2, pas);
				ps.setString(3, role);
				 i=ps.executeUpdate();
				 
				if(i!=0)
				{
					response.sendRedirect("hrhome.jsp");
				}
				else
				{
					//s.setAttribute("fail", "Create Password is Unsuccessful.. due to server failure...");
					response.sendRedirect("hrhome.jsp");
				}
				
				ps1.setString(1, id);
				ps1.setString(2, pas);
				ps1.setString(3, role);
				i=ps1.executeUpdate();
				 
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}

}
