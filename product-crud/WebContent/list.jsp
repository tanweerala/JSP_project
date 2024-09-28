<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from productinfo");
  %>
  <table border='1' class='tar'>
   <tr>
    <th>Product id</th>
    <th>Product name</th>
    <th>Product brand</th>
    <th>Product quantity</th>
    <th>Product price</th>
   </tr>
   <%
   while(rst.next())
   {
	   %>
	   <tr>
	     <td><%=rst.getString(1)%></td>
	     <td><%=rst.getString(2)%></td>
	     <td><%=rst.getString(3)%></td>
	     <td><%=rst.getString(4)%></td>
	     <td>&#8377;<%=rst.getString(5)%></td>
	   </tr>
	   <%
   }
   %>
  </table>
 </body>
</html>