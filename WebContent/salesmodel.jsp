<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.startup.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
           
       		try
       		{
       			AdminModel am = new AdminModel();
       			Connection con = am.getDbConnection();
       			//PreparedStatement ps = con.prepareStatement("select total_leave from leaves where department_name='EMPLOYEE'");
     		//	ResultSet rs =  ps.executeQuery();
       	%> 
       	    <!------------------------ Modal ------------------------>
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-sm ">
    
      <!---------------------- Modal content ---------------------->
      <form action="searchemp.jsp">
	      <div class="modal-content" style="background-color:#00C0EF;">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Search Employee</h4>
	        </div>
	        <div class="modal-body">
	          <table>
	          	<tr>
			      <td><p><label>Search Employee </label></p>      </td>
			      <td><p><input type="text" name="name"></p>  </td>
			    </tr>
			  </table>
	        </div>
	        <div class="modal-footer">
			   <button type="submit" class="btn btn-default" >Search</button>
			   <button type="reset" class="btn btn-default" >Reset</button>
			   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
        </form>
      </div>
      <!---------------------- Modal content  end---------------------->
    </div>
  </div>
<!---------------------- Modal end ---------------------->
      <!------------------------ Modal ------------------------>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm ">
    
      <!---------------------- Modal content ---------------------->
      <form action="YHD">
	      <div class="modal-content" style="background-color:#00C0EF;">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Yearly holiday</h4>
	        </div>
	        <div class="modal-body">
	          <table>
	          	<tr>
			      <td><p><label>Yearly holiday </label></p>      </td>
			      <td><p><input type="text" name="holiday"></p>  </td>
			    </tr>
			    <tr>
		          <td><p><label>Total Leave </label></p>          </td>
				<%
		    	//  if(rs.next())
		    	  {
		    	//	  String t = rs.getString(1);
		    	%>
			      <td><p><%=%></p>    </td>
	          	<%
		    	  }
		    //	  else
		    	  {
		   // 		  int t = Integer.parseInt("0");
	          	%>
	          	   <td><p><%=%></p>    </td>
	          	<%
		    	  }
		      	%>
	          	</tr>
	          </table>
	        </div>
	        <div class="modal-footer">
			   <button type="submit" class="btn btn-default" >Submit</button>
			   <button type="reset" class="btn btn-default" >Reset</button>
			   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
        </form>
      </div>
      <!---------------------- Modal content  end---------------------->
    </div>
  </div>
<!---------------------- Modal end ---------------------->
     <% 
      }
       		catch(Exception e)
       		{
       			e.printStackTrace();
       		}
      %> 	