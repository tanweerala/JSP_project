<%@ include file="../menu.jsp" %>
<html>
 <body onload="makeActive('transfer')">
 <%
 String ran=request.getParameter("ran");
 if(ran==null)
	 ran=""; 
 %>
 <form action="transfer-next.jsp"> 
  <table class='ta' style='background-color:black'>
    <tr>
     <td class='td'>Enter receiver account number:</td>
     <td class='td'><input type='number' value="<%=ran%>" name='ran' id="ran" class='tb' required></td>
     <td class='td'><button class='bt' onclick="return checkSelfAccountNo()">Submit</button></td>
    </tr>
   </table>
   <div class='dvv'>
    <span id="error" style='font-size:1.7vw'></span>
   </div>
  </form> 
 </body>
</html>