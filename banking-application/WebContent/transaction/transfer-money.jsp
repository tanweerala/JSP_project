<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@ include file="../menu.jsp" %>
<html>
 <body onload="makeActive('transfer')">
 <%
 String san=(String)session.getAttribute("accountno");
 int amount=Integer.parseInt(request.getParameter("amount"));
 PreparedStatement ps1=(PreparedStatement)application.getAttribute("selectbalance");
 ps1.setString(1,san);
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
//Updating sender amount
 PreparedStatement ps2=(PreparedStatement)application.getAttribute("withdraw");
 ps2.setInt(1,amount);
 ps2.setString(2,san);
 ps2.executeUpdate();
 
 //Updating receiver amount
 String ran=(String)session.getAttribute("ran");
 PreparedStatement ps3=(PreparedStatement)application.getAttribute("deposit");
 ps3.setInt(1,amount);
 ps3.setString(2,ran);
 ps3.executeUpdate();
 
 //Inserting summary of sender
 PreparedStatement ps4=(PreparedStatement)application.getAttribute("insertsummary");
 ps4.setString(1,san);
 ps4.setInt(2,amount);
 ps4.setObject(3,LocalDate.now());
 ps4.setString(4,LocalTime.now().toString());
 ps4.setString(5,"debit");
 ps4.executeUpdate();
 
//Inserting summary of receiver
PreparedStatement ps5=(PreparedStatement)application.getAttribute("insertsummary");
ps5.setString(1,ran);
ps5.setInt(2,amount);
ps5.setObject(3,LocalDate.now());
ps5.setString(4,LocalTime.now().toString());
ps5.setString(5,"credit");
ps5.executeUpdate();
 %>
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'>Hello user, amount <span>&#8377;<%=amount%></span> transfered into account no <%=ran%></h2>
 </div>
 </body>
</html>