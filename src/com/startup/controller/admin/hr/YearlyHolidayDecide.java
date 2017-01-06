package com.startup.controller.admin.hr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.startup.model.AdminModel;

@WebServlet("/YHD")
public class YearlyHolidayDecide extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public YearlyHolidayDecide() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     
		  String holiday =  request.getParameter("holiday");
		  
		  try
		  {
			  AdminModel am = new AdminModel();
			  int i  = am.yearlyHolidayDecide(holiday);
			  if(i!=0)
			  {
				  response.sendRedirect("hrhome.jsp");
			  }
			  else
			  {
				  response.sendRedirect("hrhome.jsp");
			  }
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
	}

}
