<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
  <%
    try
  {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root","root");
    	PreparedStatement ps = con.prepareStatement("select role from role; ");
    	ResultSet rs = ps.executeQuery();
  		
 
    	%>
        <select>
    <%
    	if(rs.next())
    	{    
    		do
    		{
    		 %>	
    			<option><%=rs.getString(1)%></option>
    		<%
    		}while(rs.next());
    	}
    %>
    </select>
    <%	
  }
  catch(Exception e)
  {
	 e.printStackTrace(); 
  }
  %>


</body>
</html>