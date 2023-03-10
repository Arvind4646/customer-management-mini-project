<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('delete')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ResultSet rst=ps.executeQuery("select * from customerinfo");
  String cid=request.getParameter("cid");
  while(rst.next())
  {
	  String dcid=rst.getString(1);
	  if(cid.equals(dcid))
	  {
		  ps.setString(1,request.getParameter("cid"));
		  ps.executeUpdate();
	 %>
	      <div class='dv'>
          <label class='lah' style='color:green'>Customer has been Deleted successfully</label>
          </div>
     <%
     return;
	  }
  }
  %>
          <div class='dv'>
          <label class='lah' style='color:red'>Customer with cid <%=cid%> does not exsist.</label>
          </div>
 </body>
</html>