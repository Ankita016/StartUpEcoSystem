<%@page import="com.startup.model.AdminModel"%>
<%@page import="com.startup.controller.admin.adminlogin"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Balance Sheet</title>
</head>
<body>
	<%! double expamt=0,incomeamt=0,investmentamt=0; ResultSet rs1,rs2,rs3; String date1,date2,date3;%>
	<%
		
		AdminModel am = new AdminModel();
		Connection con = am.getDbConnection();
		PreparedStatement ps=con.prepareStatement("select amount,date from expense");
		 rs1=ps.executeQuery();
	
		if(rs1.next())
		{
			do
			{
				expamt+=(double)rs1.getInt(1);
				date1=rs1.getString(2); 
			}while(rs1.next());
			System.out.println(expamt);
			
		}
		
		PreparedStatement ps1=con.prepareStatement("select amount,date from income");
		rs2=ps1.executeQuery();
		if(rs2.next())
		{
			do
			{
				incomeamt+=(double)rs2.getInt(1);
				date2=rs2.getString(2);
			}while(rs2.next());
			System.out.println(incomeamt);
		}
		
		PreparedStatement ps2=con.prepareStatement("select amount,date from investment");
		rs3=ps2.executeQuery();
		if(rs3.next())
		{
			do
			{
				investmentamt+=(double)rs3.getInt(1);
				date3=rs3.getString(2);
			}while(rs3.next());
			System.out.println(investmentamt);
		}
	
		
		PreparedStatement ps4=con.prepareStatement("insert into asset_liability(date,liabilities,amount1,date1,assets,amount2) values(?,?,?,?,?,?)");
			
			
		ps4.setString(1, date1);
		ps4.setString(2, "expenses");

		ps4.setDouble(3, expamt);
		ps4.setString(4, date2);
		ps4.setString(5, "incomes");
		ps4.setDouble(6, incomeamt);

		int i=0;
		i=ps4.executeUpdate();
		if(i!=0)
		{
			response.sendRedirect("financehome.jsp");
		}
		
		
	%>
	
</body>
</html>