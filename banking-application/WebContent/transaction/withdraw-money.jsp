<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@ include file="../menu.jsp" %>
<html>
 <body onload="makeActive('withdraw')">
 <%
 String acn=(String)session.getAttribute("accountno");
 int amount=Integer.parseInt(request.getParameter("amount"));
 PreparedStatement ps1=(PreparedStatement)application.getAttribute("selectbalance");
 ps1.setString(1,acn);
 ResultSet rst=ps1.executeQuery();
 rst.next();
 int balance=rst.getInt(1);
 if(amount>balance)
 {
	 %>
	 <div class='dv'>
	  <h2 style='color:red;font-family:cursive'>Sorry you do not have sufficient amount</h2>
	 </div>
	 <% 
	 return;
 }
 PreparedStatement ps2=(PreparedStatement)application.getAttribute("withdraw");
 ps2.setInt(1,amount);
 ps2.setString(2,acn);
 ps2.executeUpdate();
 PreparedStatement ps3=(PreparedStatement)application.getAttribute("insertsummary");
 ps3.setString(1,acn);
 ps3.setInt(2,amount);
 ps3.setObject(3,LocalDate.now());
 ps3.setString(4,LocalTime.now().toString());
 ps3.setString(5,"debit");
 ps3.executeUpdate();
 %>
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'>Hello user, amount <span>&#8377;<%=amount%></span> debited from your account</h2>
 </div>
 </body>
</html>