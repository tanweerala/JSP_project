<%@page import="java.sql.*"%>
<%@ include file="../menu.jsp" %>
<html>
 <body onload="makeActive('balance')">
 <%
 PreparedStatement ps=(PreparedStatement)application.getAttribute("selectbalance");
 ps.setString(1,(String)session.getAttribute("accountno"));
 ResultSet rst=ps.executeQuery();
 rst.next();
 String amount=rst.getString(1);
 %>
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'>Hello user, your current balance amount is 
    <span>&#8377;<%=amount%></span>
  </h2>
 </div>
 </body>
</html>