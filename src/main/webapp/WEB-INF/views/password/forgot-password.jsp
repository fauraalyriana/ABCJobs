<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>

<div class="container">
        <div class="row align-items-center">
        <div class="col-6">
            <img src="https://img.freepik.com/free-vector/forgot-password-concept-illustration_114360-1123.jpg?w=740&t=st=1676888522~exp=1676889122~hmac=192c66410d8e212adf05ff265eca685f77e7a43e96f4bcff7907372687d0a911" style="width:100%">
     	</div>
          <div class="col-6">
            <h2>Reset your password</h2>
    <p>Enter your email and we'll send you a link to reset your password</p>
    <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
  		${message}
	</div>
    <form class="was-validated" action="forgot-password" method="post">
        <div class="form mb-3">
            <input type="email" class="form-control" id="floatingInput" name="emailAddress" required>
			<div class="invalid-feedback">
	      		Email address should be have @ and .
    		</div>
        </div>
        <button type="submit" class="btn" style="background: #86A6DF; color: white">Reset your password</button>
    </form>
  </div>
 </div>
</div>


<jsp:include page="../../footer.jsp"></jsp:include>