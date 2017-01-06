<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.startup.model.AdminModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <style type="text/css"  rel="stylesheet">
          
		.S {
				    display: inline-block;
				    position: relative;
				    width: 100%;
				    height: 27px;
				    line-height: 27px;
				    margin: 5px -5px 0;
				    padding: 7px 5px 3px;
				    border: none;
				    outline: none;
				    color: #555;
				    font-family: 'Helvetica Neue', Arial, sans-serif;
				    font-weight: bold;
				    font-size: 14px;
				    opacity: .6;
				    transition: all linear .3s;
		}
		.S {
		    -webkit-font-lgoothing: antialiased;
		    outline: none;
		}
		
         </style>
<%
           
       		try
       		{
       			AdminModel am = new AdminModel();
       			Connection con = am.getDbConnection();
       			PreparedStatement ps=con.prepareStatement("select * from clientproject");
       			ResultSet rs=ps.executeQuery();
    				if(rs.next())
    		 		{
       			
       	%> 
       	    <!------------------------ Modal ------------------------>
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-sm ">
    
      <!---------------------- Modal content ---------------------->
      <form action="showclientprojectadmin.jsp">
	      <div class="modal-content" style="background-color:#00C0EF;">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Search Employee</h4>
	        </div>
	        <div class="modal-body">
	          <table>
	          	<tr>
			      <td><p><label>Client ProjectID </label></p>  </td>
			     </tr><tr> 
			      <td><p>
			      	 <select name='cpid' class='S' style="width:120%">
			      	 <% 
					do{
					%>
						<option><%= rs.getString(1)%></option>
					<% 
					}while(rs.next());
    		 		}
                     %>
			    	</select>
			       </td>
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