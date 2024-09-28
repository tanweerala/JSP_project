<html>
 <head>
    <link href="CSS/style.css" rel="stylesheet">
	<link href="CSS/bootstrap.min.css" rel="stylesheet">
 </head>
 <body>
 <div class='dvv'>
   <label class='lah'>Add Employee Form</label>
  </div> 
  <div class='container'> 
  	<div class='card col-md-9 my-2 mx-auto'>
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
  	   	  	<input type="button" value="Cancel" class='btn btn-secondary' onclick="history.back()">
  	   	  </div>
  	    </div>	  
  	  </form>
  	 </div>
  	</div>
  </div>
 </body>
</html>