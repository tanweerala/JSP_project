<%@page import="java.sql.*"%>
<html>
 <body onload="makeActive('delete')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ps.setString(1,request.getParameter("eid"));
  ps.executeUpdate();
  response.sendRedirect("list.jsp");
  %>
 </body>
</html>