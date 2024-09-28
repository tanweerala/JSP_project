<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  PreparedStatement ps=cn.prepareStatement("select * from productinfo where pid=?");
  ps.setString(1,pid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	    <%@ include file="menu.jsp" %>
	    <form action="confirm-delete.jsp">
		<table border='1' class='tar' style='width:45%'>
		  <tr style='background-color:red;color:white'>
		   <th colspan="2" style="text-align: center">Product Details</th>
		  </tr>
		  <tr>
		   <th align="left">Product id</th>
		   <td>
		     <input type='hidden' value="<%=pid%>" name="pid">
		     <%=pid%>
		   </td>
		  </tr>
		  <tr>
		   <th align="left">Product name</th>
		   <td><%=rst.getString(2)%></td>
		  </tr>
		  <tr>
		   <th align="left">Product brand</th>
		   <td><%=rst.getString(3)%></td>
		  </tr>
		  <tr>
		   <th align="left">Product quantity</th>
		   <td><%=rst.getString(4)%></td>
		  </tr>
		  <tr>
		   <th align="left">Product price</th>
		   <td>&#8377;<%=rst.getString(5)%></td>
		  </tr>
		  <tr>
		   <td colspan="2" align="right">
		    <button class='bt' style='color:red'>Confirm Delete</button>
		   </td>
		  </tr>
		</table>  
		</form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div class='dvv'>
	    <h2 style="color:red">Product record with id <%=pid%> does not exist</h2>
	  </div>
	  <%
  }
  %>
 </body>
</html>