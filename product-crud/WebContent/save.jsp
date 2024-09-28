<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  String v1=request.getParameter("pid");
  String v2=request.getParameter("name");
  String v3=request.getParameter("brand");
  String v4=request.getParameter("qty");
  String v5=request.getParameter("price");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?,?)");
  ps.setString(1,v1);
  ps.setString(2,v2);
  ps.setString(3,v3);
  ps.setString(4,v4);
  ps.setString(5,v5);
  ps.executeUpdate();
  %>
  <div class='dv'>
   <h1 class='fof' style='color:green'>Product record has been saved successfully</h1>
  </div>
 </body>
</html>