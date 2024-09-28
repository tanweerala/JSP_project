<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  	String userid=request.getParameter("uid");
	String password=request.getParameter("pass");
	String name=request.getParameter("name");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
	PreparedStatement ps=cn.prepareStatement("insert into user values(?,?,?)");
	ps.setString(1,userid);
	ps.setString(2,password);
	ps.setString(3,name);
	ps.executeUpdate();
  %>
  <div style='text-align:center'>
   <h2>Dear <%=name%> you have been reigstered successfully</h2>
   <a href='login.html' style='font-size:20px'>Click to login</a>
  </div>
 </body>
</html>