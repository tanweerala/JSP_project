<%@page import="java.sql.*"%>
<html>
<head>
  <link href='../CSS/style.css' rel='stylesheet'>
  <link href='../CSS/bootstrap.min.css' rel='stylesheet'>
</head>
<body class='bgi'>
<%
String name=request.getParameter("name");
String uid=request.getParameter("userid");
PreparedStatement ps1=(PreparedStatement)application.getAttribute("registration");
ps1.setString(1,uid);
ps1.setString(2,request.getParameter("password"));
ps1.setString(3,name);
ps1.setString(4,request.getParameter("phone"));
ps1.setString(5,request.getParameter("address"));
ps1.executeUpdate();
PreparedStatement ps2=(PreparedStatement)application.getAttribute("account");
ps2.setString(1,uid);
ps2.setInt(2,5000);
ps2.executeUpdate();
PreparedStatement ps3=(PreparedStatement)application.getAttribute("no");
ps3.setString(1,uid);
ResultSet rst=ps3.executeQuery();
rst.next();
int an=rst.getInt(1);
%>  
 <div class='dvv'>
   <label class='lah' style='text-decoration:underline;font-size:2.5vw'>User Registration</label>
  </div>
  <hr>
 <div class='dv'>
  <label class='lah'>Congratulations!!! </label>
  <label class='lah'><%=name%></label>
  <br><br>
  <label class='la' style='color:white'>You have been registered successfully</label>
  <br><br>
  <label class='la' style='color:white'>Your account number is <span style='font-size:2vw;color:orange;font-weight;bold'><%=an%></span></label>
 </div>
 <div class='dvv'>
   <a href='login.jsp' class='btl'>Click to Login</a>
 </div>
</body>
</html>