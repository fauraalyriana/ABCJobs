<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>

 <div class="container mb-5" align="center" >
	<img src="https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4986.jpg?w=740&t=st=1676895585~exp=1676896185~hmac=e1fc2d19571ab8e52fa2fc1fa41e0af8b8c5c57f2169188b2497442ae6e0f6a5" style="width:40%;">
        	<h2>You're all signed up! </h2>
                <p>Thank you <span class="fw-bold">${email}</span> for your registration. <br> Please check your email for the confirmation message we just send you</p>
    			<button type="button" class="btn" style="background: #86A6DF; color: white" data-bs-toggle="modal" data-bs-target="#ver">
	  				Get Confirmation Link
				</button>
        </div>
        
<!-- Modal -->
<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<i class='bx bxs-envelope fs-2'></i>
      	<h2>Successful</h2>
      	<p>The link has been sent it to your email</p>
       	<a href="verified" class="btn" style="background: #86A6DF; color: white">Continue</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>