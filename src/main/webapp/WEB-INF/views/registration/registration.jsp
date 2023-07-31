<jsp:include page="../../header.jsp">
	<jsp:param value="Registration" name="HTMLtitle" />
</jsp:include>

<div class="container" style="padding-top: 50px; ">

	<h2 style="padding-bottom: 50px;" align="center">Create a new account</h2>
    	<form class="row g-2 was-validated" action="registration" method="post">
        	<div class="col-md-12 mb-3">
          		<label for="name" class="form-label">Full Name</label>
				<input type="text" class="form-control" id="name" name="name" required>
					<div class="invalid-feedback">Please fill out this field.</div>
        	</div>
        	<div class="col-md-6 mb-3">
         		<label for="email" class="form-label">Email address</label>
				<input type="email" class="form-control" id="email" name="email" required>
					<div class="invalid-feedback">Please fill out this field.</div>
       		</div>
        	<div class="col-md-6 mb-3">
          		<label for="Address" class="form-label">Address</label>
				<input type="text" class="form-control" id="address" name="address" required>
					<div class="invalid-feedback">Please fill out this field.</div>
        	</div>
        	<div class="col-md-6 mb-3">
          		<label for="Age" class="form-label">Age</label>
				<input type="number" class="form-control" id="Age" name="age" required>
					<div class="invalid-feedback">Please fill out this field.</div>
        	</div>
        	<div class="col-md-6 mb-3">
         		<label for="username" class="form-label">Username</label>
        		<input type="text" class="form-control" id="username" name="username" required>
					<div class="invalid-feedback">Please fill out this field.</div>
       		</div>
        	<div class="col-md-6 mb-3">
          		<label for="password" class="form-label">Password</label>
				<input type="password" class="form-control" id="password" name="password" required>
					<div class="invalid-feedback">
          			Password required & must be match
        			</div>
        	</div>
        	<div class="col-md-6 mb-3">
				<label for="passwordConfirmation" class="form-label">Password Confirmation</label>
				<input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" required>
					<div class="invalid-feedback">
          				Password required & must be match
       				</div>
    		</div>
        	<div class="col-12 mb-3">
          		<div class="form-check">
            		<input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
            		<label class="form-check-label" for="invalidCheck2">
              			Agree to terms and conditions
            		</label>
          		</div>
        	</div>
        	<div class="col-12">
         		<button type="submit" class="btn" style="background: #86A6DF; color: white">Register</button>
        	</div>
      </form>
      <div>
      	<p>Have an account? <a href="login">Sign In</a></p>
      </div>
</div>
		
		
<jsp:include page="../../footer.jsp"></jsp:include>