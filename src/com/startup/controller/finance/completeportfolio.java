package com.startup.controller.finance;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.startup.model.AdminModel;



@WebServlet("/completeportfoliofin")
public class completeportfolio extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public completeportfolio() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session = request.getSession();
		String finid=(String)session.getAttribute("finid");
		if(finid==null)
		{
			response.sendRedirect("index.html");
		}
		
		 
		/*
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		
		String gender=request.getParameter("gender");
		String contact=request.getParameter("contact");
		
		String address=request.getParameter("address");
		String pincode=request.getParameter("pincode");
		
		String email_id=request.getParameter("email");
		String target=request.getParameter("target");
		
		String salary=request.getParameter("salary");
		String doj=request.getParameter("doj");
		
		String previous_company=request.getParameter("pre_com");
		String experience=request.getParameter("exp");
	
		String work_on_project_name=request.getParameter("pro_name");
		String department_name=request.getParameter("d_name");
		String designation=request.getParameter("designation");
		
		System.out.println(".$$$."+department_name);
		*/
		
		String name=null;
		String age=null;		
		String gender=null;
		String contact=null;
		
		String address=null;
		String pincode=null;
		
		String email_id=null;
		String target=null;
		
		String salary=null;
		String doj=null;
		
		String previous_company=null;
		String experience=null;
	
		String work_on_project_name=null;
		String department_name=null;
		String designation=null;
		String uploaddir="E:\\sir\\apache-tomcat-7.0.32\\apache-tomcat-7.0.32\\webapps\\examples\\employeeimage";
		
	if(ServletFileUpload.isMultipartContent(request))
	{	
		try
		{
			AdminModel am = new AdminModel();
			Connection con = am.getDbConnection();
			PreparedStatement ps=con.prepareStatement("update adminemp set name=?,age=?,Gender=?,contact=?,address=?,pincode=?,email_id=?,target = ?,salary = ?, date_of_joining = ?,previous_company = ?, experience = ?, work_on_project_name = ?, department_name = ?,designation = ?, path = ? where id=?");
			
			DiskFileItemFactory itemfactory=new DiskFileItemFactory();
			List<FileItem> multiparts=new ServletFileUpload(itemfactory).parseRequest(request);
			String Path=null;
			int count=0;
			
			for(FileItem item:multiparts)
			{
				if(item.getFieldName().equals("name"))
				{
					name=item.getString();
				}
				if(item.getFieldName().equals("age"))
				{
					age=item.getString();
				}
				if(item.getFieldName().equals("gender"))
				{
					gender=item.getString();
				}
				if(item.getFieldName().equals("contact"))
				{
					contact=item.getString();
				}
				if(item.getFieldName().equals("address"))
				{
					address=item.getString();
				}
				if(item.getFieldName().equals("pincode"))
				{
					pincode=item.getString();
				}
				if(item.getFieldName().equals("email"))
				{
					email_id=item.getString();
				}
				if(item.getFieldName().equals("target"))
				{
					target=item.getString();
				}
				if(item.getFieldName().equals("salary"))
				{
					salary=item.getString();
				}
				if(item.getFieldName().equals("doj"))
				{
					doj=item.getString();
				}
				if(item.getFieldName().equals("pre_com"))
				{
					previous_company=item.getString();
				}
				if(item.getFieldName().equals("exp"))
				{
					experience=item.getString();
				}
				if(item.getFieldName().equals("pro_name"))
				{
					work_on_project_name=item.getString();
					System.out.println("..pro_name..."+work_on_project_name);
				}
				if(item.getFieldName().equals("d_name"))
				{
					department_name=item.getString();
					System.out.println("..d_name..."+department_name);
				}
				if(item.getFieldName().equals("designation"))
				{
					designation=item.getString();
				}
				if(!item.isFormField())
				{
					String filename=new File(item.getName()).getName();
					item.write(new File(uploaddir+File.separator+filename));
					Path=uploaddir+"\\"+filename;
				//	String contenttype=item.getContentType();
				//	out.println("content type is="+contenttype+"==");
					
					ps.setString(1,name);
					ps.setString(2, age);
					ps.setString(3, gender);
					ps.setString(4, contact);
					ps.setString(5, address);
					ps.setString(6, pincode);
					ps.setString(7, email_id);
					ps.setString(8, target);
					ps.setString(9, salary);
					ps.setString(10, doj);
					ps.setString(11, previous_company);
					ps.setString(12, experience);
					ps.setString(13, work_on_project_name);
					ps.setString(14, department_name);
					ps.setString(15, designation);
					ps.setString(16, Path);
					ps.setString(17, finid);
				}	
			}	
			int i=0;
			i=ps.executeUpdate();
			
			if(i!=0)
			{
				response.sendRedirect("index.html");
			}
			else
			{
				out.println("portfolio.jsp");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	  }	
	}

}
