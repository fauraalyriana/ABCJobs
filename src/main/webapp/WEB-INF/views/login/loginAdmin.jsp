<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>

<div class="container">
	<div class="row align-items-center">
    	<div class="col-6">
        	<h2 align="center">Welcome Back Admin!</h2>
            <hr>
            
            <form action="adminLogin" method="post">
            	<div class="mb-3">
            		<label for="name" class="form-label">Name</label>
            		<input type="text" class="form-control" id="name" name="name" required>
        		</div>
				<div class="mb-3">
    				<label for="password" class="form-label">Password</label>
        			<input type="password" class="form-control" id="password" name="password" required>
				</div>
    				<button type="submit" class="btn" style="background: #86A6DF; color: white">Log in</button>
          	</form>
         	
   				<div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? "d-none" : "d-block" }" role="alert">
  						${ message }
  					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
	
				<div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? "d-none" : "d-block" }" role="alert">
  						${ scMessage }
  					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
    	</div>
	<div class="col-6">
    	<img src="https://img.freepik.com/free-vector/login-concept-illustration_114360-757.jpg?w=740&t=st=1676868754~exp=1676869354~hmac=3d51e799fdd46740a0ea63d76a8851470f0aef12fd9a96ea778c0b281fe0ef40" style="width:100%">
    </div>
</div>
	
</div>
<jsp:include page="../../footer.jsp"></jsp:include>