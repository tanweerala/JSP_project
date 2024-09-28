<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@ include file="../menu.jsp" %>
<html>
 <body onload="makeActive('deposit')">
 <%
 int amount=Integer.parseInt(request.getParameter("amount"));
 PreparedStatement ps=(PreparedStatement)application.getAttribute("deposit");
 ps.setInt(1,amount);
 ps.setString(2,(String)session.getAttribute("accountno"));
 ps.executeUpdate();
 PreparedStatement ps1=(PreparedStatement)application.getAttribute("insertsummary");
 ps1.setString(1,(String)session.getAttribute("accountno"));
 ps1.setInt(2,amount);
 ps1.setObject(3,LocalDate.now());
 ps1.setString(4,LocalTime.now().toString());
 ps1.setString(5,"credit");
 ps1.executeUpdate();
 %>
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'>Hello user, amount <span>&#8377;<%=amount%></span> credited into your account</h2>
 </div>
 </body>
</html>