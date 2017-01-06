package com.startup.controller.finance;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.startup.controller.admin.adminlogin;
import com.startup.model.AdminModel;


@WebServlet("/asset_liab")
public class addasset_liblities extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addasset_liblities() {
        super();
       
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String date=request.getParameter("dt1");
		String liabilties1=request.getParameter("lib1");
		String amount1=request.getParameter("amt1");
		String date2=request.getParameter("dt2");
		String assets=request.getParameter("ass1");
		String amount2=request.getParameter("amt2");
		
		try
		{
			AdminModel am = new AdminModel();
			Connection con=am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("insert into asset_liability values(?,?,?,?,?,?)");
			ps.setString(1, date);
			ps.setString(2, liabilties1);
			ps.setString(3, amount1);
			ps.setString(4, date2);
			ps.setString(5, assets);
			ps.setString(6, amount2);
			
			int i=0;
			i=ps.executeUpdate();
			System.out.println("...");
			
			if(i!=0)
			{
				response.sendRedirect("financehome.jsp");
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

}
