<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('delete')">
  <form action="confirm.jsp">
  	<table class='ta'>
   	 <tr>
      <td class='pad'>Enter employee id</td>
      <td class='pad'><input type='text' name='eid' class='tb' required></td>
      <td class='pad'><button class='btr' style='background-color:red'>Delete Record</button></td>
     </tr>
    </table>
  </form>
 </body>
</html>