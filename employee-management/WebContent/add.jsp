<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('save')">
  <div class='container'> 
  	<div class='card col-md-9 mx-auto'>
  	 <div class='card-body'>
  	  <form action="save.jsp" method="post"> 
  	  	<div class='row'>
  	   	  <div class='form-group col-md-10'>
  	   	  	<label for="eid">Enter employee id</label><span> *</span>
  	   	  	<input type="text" id="eid" name="eid" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="firstname">Enter first name</label><span> *</span>
  	   	  	<input type="text" id="firstname" name="firstname" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="lastname">Enter last name</label><span> *</span>
  	   	  	<input type="text" id="lastname" name="lastname" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="phone">Enter phone number</label><span> *</span>
  	   	  	<input type="text" id="phone" name="phone" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="email">Enter email id</label><span> *</span>
  	   	  	<input type="text" id="email" name="email" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="department">Enter department</label><span> *</span>
  	   	  	<input type="text" id="department" name="department" class='form-control' required>
  	   	  </div>
  	   	  <div class='form-group col-md-5'>
  	   	  	<label for="salary">Enter salary</label><span> *</span>
  	   	  	<input type="text" id="salary" name="salary" class='form-control' required>
  	   	  </div>
  	    </div>
  	    <div class='row'>
  	   	  <div class='form-group col-md-10'>
  	   	  	<button class='btn btn-primary'>Save Record</button>
  	   	  </div>
  	    </div>	  
  	  </form>
  	 </div>
  	</div>
  </div>
 </body>
</html>