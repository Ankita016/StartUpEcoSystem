package com.startup.controller.sales;
import com.startup.model.AdminModel;
import com.startupecosystem.bean.AddClientBean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addclient")
public class addclient extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addclient() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		String cid=request.getParameter("cid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String age=request.getParameter("age");
		String skype=request.getParameter("skype");
		String contact=request.getParameter("cont");
		String address=request.getParameter("address");
		String country=request.getParameter("country");
		String city=request.getParameter("city");
		String gender=request.getParameter("gender");
		String order=request.getParameter("order");
		String service=request.getParameter("service");


		try
		{
			AddClientBean acb = new AddClientBean();
			acb.setCid(cid);
			acb.setName(name);
			acb.setEmail(email);
			acb.setAge(age);
			acb.setSkype(skype);
			acb.setContact(contact);
			acb.setAddress(address);
			acb.setCountry(country);
			acb.setCity(city);
			acb.setGender(gender);
			acb.setOrder(order);
			acb.setService(service);
			
			
			AdminModel am = new AdminModel();
			int i=0;
			i = am.addClient(acb);
			if(i==0)
			{
				response.sendRedirect("addclient.jsp");
			}
			else
			{
				response.sendRedirect("saleshome.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}

	
	
