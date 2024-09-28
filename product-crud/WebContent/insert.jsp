<%@ include file="menu.jsp" %>
<html>
 <body>
  <form action="save.jsp">
  	<table class="ta">
   		<tr>
    		<td class="pd">Enter product id</td>
    		<td class="pd"><input type="text" name="pid" class="tb" required></td>
   		</tr>
   		<tr>
    		<td class="pd">Enter product name</td>
    		<td class="pd"><input type="text" name="name" class="tb" required></td>
   		</tr>
   		<tr>
    		<td class="pd">Enter product brand</td>
    		<td class="pd"><input type="text" name="brand" class="tb" required></td>
   		</tr>
   		<tr>
    		<td class="pd">Enter product quantity</td>
    		<td class="pd"><input type="text" name="qty" class="tb" required></td>
   		</tr>
   		<tr>
    		<td class="pd">Enter product price</td>
    		<td class="pd"><input type="text" name="price" class="tb" required></td>
   		</tr>
   		<tr>
    		<td colspan="2" align="right" class="pd">
     		<button class='bt'>Save Record</button>
    		</td>
   	  	</tr>
    </table>
   </form>  
 </body>
</html>