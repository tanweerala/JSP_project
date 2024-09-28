<%@page import="java.sql.*"%>
<html>
 <body onload="makeActive('transfer')">
  <%
  String ran=request.getParameter("ran");
  session.setAttribute("ran",ran);
  %>
 <jsp:include page="transfer.jsp">
  <jsp:param value="<%=ran%>" name="ran"/>
 </jsp:include>
 <%
 PreparedStatement ps=(PreparedStatement)application.getAttribute("selectbalance");
 ps.setString(1,ran);
 ResultSet rst=ps.executeQuery();
 if(rst.next())
 {
	 rst.close();
	 %>
	 <form action="transfer-money.jsp"> 
  	  <table class='ta' style='background-color:green'>
    	<tr>
     		<td class='td'>Enter amount to be transfered:</td>
     		<td class='td'><input type='number' name='amount' class='tb' required></td>
     		<td class='td'><button class='bt'>Submit</button></td>
    	</tr>
     </table>
  </form> 
	 <%
 }
 else
 {
	 rst.close();
	 %>
	 <div class='dvv'>
 		 <label style='color:red;font-size:1.7vw'>Receiver account number(<%=ran%>) does not exist</label>
 	 </div>
    <%
 }
 %>
 </body>
</html>