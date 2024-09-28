<%@page import="java.sql.*"%>
<html>
<head>
  <link href='../CSS/style.css' rel='stylesheet'>
  <link href='../CSS/bootstrap.min.css' rel='stylesheet'>
</head>
<body class='bgi'>
<%
String uid=request.getParameter("userid");
String pass=request.getParameter("pass");
PreparedStatement ps=(PreparedStatement)application.getAttribute("selectuser");
ps.setString(1,uid);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	String dpass=rst.getString(2);
	if(pass.equals(dpass))
	{
		String name=rst.getString(1);
		String acno=rst.getString(3);
		session.setAttribute("username",name);
		session.setAttribute("accountno",acno);
		response.sendRedirect("/banking-application");
	}
	else
	{
		%>
		<jsp:include page="login.jsp">
		   <jsp:param value="Entered password is wrong" name="msg"/>
		</jsp:include>
		<%
	}
}
else
{
	%>
	<jsp:include page="login.jsp">
	   <jsp:param value="Entered user id does not exist" name="msg"/>
	</jsp:include>
	<%	
}
%>  
</body>
</html>