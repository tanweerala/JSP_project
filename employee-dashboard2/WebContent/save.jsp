<%@page import="java.sql.*"%>
<html>
 <body onload="makeActive('save')">
  <%
  String eid=request.getParameter("eid");
  PreparedStatement ps1=(PreparedStatement)application.getAttribute("select");
  ps1.setString(1,eid);
  ResultSet rst=ps1.executeQuery();
  if(rst.next())
  {
	%>
	<jsp:include page="add.jsp"/>
	<div class='dvv'>
	 <label style='color:red'>Employee with id <%=eid%> already exists</label> 
	</div>
	<%  
  }
  else
  {
	PreparedStatement ps=(PreparedStatement)application.getAttribute("save");  
  	ps.setString(1,eid);
  	ps.setString(2,request.getParameter("firstname"));
  	ps.setString(3,request.getParameter("lastname"));
  	ps.setString(4,request.getParameter("phone"));
  	ps.setString(5,request.getParameter("email"));
  	ps.setString(6,request.getParameter("department"));
  	ps.setString(7,request.getParameter("salary"));
  	ps.executeUpdate();
  	response.sendRedirect("list.jsp");
  }
  %>
 </body>
</html>