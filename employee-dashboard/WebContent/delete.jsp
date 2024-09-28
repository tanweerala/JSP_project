<%@page import="java.sql.*"%>
<html>
 <body onload="makeActive('delete')">
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  PreparedStatement ps=cn.prepareStatement("delete from employeeinfo where eid=?");
  ps.setString(1,request.getParameter("eid"));
  ps.executeUpdate();
  response.sendRedirect("list.jsp");
  %>
 </body>
</html>