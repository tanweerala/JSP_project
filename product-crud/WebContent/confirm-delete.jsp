<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  PreparedStatement ps=cn.prepareStatement("delete from productinfo where pid=?");
  ps.setString(1,pid);
  ps.executeUpdate();
  %>
  <div class='dv'>
   <h2 class='fof' style='color:red'>Product record has been deleted successfully</h2>
  </div>
 </body>
</html>