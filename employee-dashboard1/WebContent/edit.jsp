<%@page import="java.sql.*"%>
<html>
 <head>
    <link href="CSS/style.css" rel="stylesheet">
	<link href="CSS/bootstrap.min.css" rel="stylesheet">
 </head>
 <body>
 <%
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
 PreparedStatement ps=cn.prepareStatement("select * from employeeinfo where eid=?");
 ps.setString(1,request.getParameter("eid"));
 ResultSet rst=ps.executeQuery();
 rst.next();
 %>
 <div class='dvv'>
   <label class='lah'>Edit Employee Form</label>
  </div> 
  <div class='container'> 
  	<div class='card col-md-9 my-2 mx-auto'>
  	 <div class='card-body'>
  	  <form action="update.jsp" method="post"> 
  	  	<div class='row'>
  	   	  <div class='form-group col-md-10'>
  	   	  	<label for="eid">Employee id</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(1)%>" id="eid" name="eid" class='form-control' readonly>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="firstname">Edit first name</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(2)%>" id="firstname" name="firstname" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="lastname">Edit last name</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(3)%>" id="lastname" name="lastname" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="phone">Edit phone number</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(4)%>" id="phone" name="phone" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="email">Edit email id</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(5)%>" id="email" name="email" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="department">Edit department</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(6)%>" id="department" name="department" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="salary">Edit salary</label><span> *</span>
  	   	  	<input type="text" value="<%=rst.getString(7)%>" id="salary" name="salary" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-10'>
  	   	  	<button class='btn btn-primary'>Update Record</button>
  	   	  	<input type="button" value="Cancel" class='btn btn-secondary' onclick="history.back()">
  	   	  </div>
  	    </div>	  
  	  </form>
  	 </div>
  	</div>
  </div>
 </body>
</html>