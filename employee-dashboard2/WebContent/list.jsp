<%@page import="java.sql.*"%>
<html>
 <head>
    <link href="CSS/style.css" rel="stylesheet">
	<link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
 </head>
 <body>
  <%
  Statement st=(Statement)application.getAttribute("st");
  ResultSet rst=st.executeQuery("select * from employeeinfo");
  %>
  <div class='dvv'>
   <label class='lah'>Employee Dahsboard</label>
  </div> 
  <div class='container'>
   <a href="add.jsp"><i class='fa fa-user-plus'></i>Add Employee</a>
   <div class='card mx-auto my-2'>
    <div class='card-body'>
     <div class='table'>
      <table class='table table-hover'>
       <thead>
        <tr>
         <th>Employee id</th><th>First name</th><th>Last name</th>
         <th>Phone number</th><th>Email id</th><th>Department</th><th>Salary</th>
         <th>Action</th>
        </tr>
       </thead>
       <tbody>
        <%
        while(rst.next())
        {
        	String eid=rst.getString(1);
        	%>
        	 <tr>
        	  <td><%=eid%></td>
        	  <td><%=rst.getString(2)%></td>
        	  <td><%=rst.getString(3)%></td>
        	  <td><%=rst.getString(4)%></td>
        	  <td><%=rst.getString(5)%></td>
        	  <td><%=rst.getString(6)%></td>
        	  <td><%=rst.getString(7)%></td>
        	  <td>
        	   <a href="edit.jsp?eid=<%=eid%>"><i class='fa fa-edit'></i>Edit |</a>
        	   <a href="delete.jsp?eid=<%=eid%>" style='color:red' onclick="return confirm('Are you sure to delete?')"><i class='fa fa-trash-alt'></i>Delete</a>
        	  </td>
        	 </tr>
        	<%
        }
        %>
       </tbody>
      </table>
     </div>
    </div>
   </div>
  </div>
 </body>
</html>