<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  PreparedStatement ps=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,emailid=?,department=?,salary=? where eid=?");
  ps.setString(1,request.getParameter("firstname"));
  ps.setString(2,request.getParameter("lastname"));
  ps.setString(3,request.getParameter("phone"));
  ps.setString(4,request.getParameter("email"));
  ps.setString(5,request.getParameter("department"));
  ps.setString(6,request.getParameter("salary"));
  ps.setString(7,request.getParameter("eid"));
  ps.executeUpdate();
  response.sendRedirect("list.jsp");
  %>
 </body>
</html>