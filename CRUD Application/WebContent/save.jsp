<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('save')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("save");
  ResultSet rst=ps.executeQuery("select * from customerinfo");
  String cid=request.getParameter("cid");
  while(rst.next())
  {
	  String dcid=rst.getString(1);
	  if(cid.equals(dcid))
	  {
	 %>
	     <div class='dv'>
         <label class='lah' style='color:red'>Customer with cid <%=cid%> is already exsist.</label>
         </div>
     <%
     return;
	  }
  }
  ps.setString(1,request.getParameter("cid"));
  ps.setString(2,request.getParameter("firstname"));
  ps.setString(3,request.getParameter("lastname"));
  ps.setString(4,request.getParameter("city"));
  ps.setString(5,request.getParameter("phone"));
  ps.setString(6,request.getParameter("email"));
  ps.executeUpdate();
  %>
  <div class='dv'>
   <label class='lah' style='color:green'>Customer has been added successfully</label>
  </div>
 </body>
</html>