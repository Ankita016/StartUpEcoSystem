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
import com.startupecosystem.bean.LoginBean;

@WebServlet("/lgn")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String id = request.getParameter("emailid");
			String password = request.getParameter("password");
			String roleopt = request.getParameter("role");
			System.out.println("before con establish...."+id+"...."+password+"...."+roleopt);
			
			LoginBean lb = new LoginBean();
			lb.setId(id);
			lb.setPassword(password);
			lb.setRoleopt(roleopt);
			
			try
			{
			   AdminModel am = new AdminModel();
			  ResultSet rs = am.adminLogin(lb);
			if(rs.next())
			{
				System.out.println("-----success-------");
				System.out.println(rs.getString(1)+".."+rs.getString(2)+".."+rs.getString(3));
				
				if(roleopt.equalsIgnoreCase("ADMIN"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("id", id);
					System.out.println("..admin.."+rs.getString(1)+".."+rs.getString(2)+".."+rs.getString(3));
					response.sendRedirect("adminhome.jsp");
				}
				else if(roleopt.equalsIgnoreCase("Hr"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("hrid", id);
					System.out.println("......hr.."+rs.getString(1)+".."+rs.getString(2)+".."+rs.getString(3));
					response.sendRedirect("hrhome.jsp");
				}
				else if(roleopt.equalsIgnoreCase("finance"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("finid", id);
					System.out.println("..finace.."+rs.getString(1)+".."+rs.getString(2)+".."+rs.getString(3));
					response.sendRedirect("financehome.jsp");
				}
				else if(roleopt.equalsIgnoreCase("Employee"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("emprole",roleopt);
					System.out.println("+..lgn..emprole.."+roleopt);
					session.setAttribute("empid", id);
					response.sendRedirect("emphome.jsp");
				}
				else if(roleopt.equalsIgnoreCase("Sales"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("salesid", id);
					response.sendRedirect("saleshome.jsp");
				}
			}
			else
				System.out.println("not success");
			response.sendRedirect("index.html");
			
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
	}

}
