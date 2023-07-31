<jsp:include page="../../header.jsp">
	<jsp:param value="Reset" name="HTMLtitle" />
</jsp:include>

<div class="container" style="padding-top: 12px; padding-bottom: 20px;">
	<div class="row align-items-center">
    	<div class="col-6">
        	<h2 align="center">Reset your password</h2>
            <hr>
            <form class="was-validated" action="reset" method="post">
                <div class="mb-3">
            	    <label for="password" class="form-label">New Password</label>
	    			<input type="password" class="form-control" id="password" name="password" required>
	    				<div class="invalid-feedback">
      					Password required & must be match
   						</div>
   				</div>
	  			<div class="mb-3">
	    			<label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
	    			<input type="password" class="form-control" id="passwordConfirmation" required>
	   					 <div class="invalid-feedback">
      					Password required & must be match
   						 </div>
	  			</div>
	  			<button type="submit" class="btn btn-primary">Update Password</button>
			</form>
		</div>
          <div class="col-6">
            <img src="https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?w=740&t=st=1676890781~exp=1676891381~hmac=95647bf51cebc2581e9a38fec4a4ebbee53ce04ca059342dd9a8296b4cba2e91" style="width:100%">
          </div>
        </div>
    </div>

<jsp:include page="../../footer.jsp"></jsp:include>