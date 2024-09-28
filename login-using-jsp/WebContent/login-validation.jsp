<html>
 <body>
  <%
    String userid=request.getParameter("uid");
	String password=request.getParameter("pass");
	if(userid.equals("admin") && password.equals("cetpa"))
	{
		%>
		<h2>Login success</h2>
		<%
	}
	else
	{
		%>
		<h2 style='color:red'>Login fail</h2>
		<%
	}
  %>
 </body>
</html>
