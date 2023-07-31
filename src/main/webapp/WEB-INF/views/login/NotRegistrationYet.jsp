<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>

 <div class="container mb-3" align="center">
	<img src="https://img.freepik.com/free-vector/oops-404-error-with-broken-robot-concept-illustration_114360-1932.jpg?w=740&t=st=1677048859~exp=1677049459~hmac=941c65f85bf1ebcc6042a0fd137d6534a4ad391f1cd109b24c00e57990359ab1" style="width:40%;">
                <h3>Sorry <span class="fw-bold">${email}</span> not yet registered. </h3>
                <h5>please create a new account first</h5>
                
                <a href="registration">
                	<button type="button" class="btn" style="background: #86A6DF; color: white" data-bs-toggle="modal" data-bs-target="#ver">
	  				Sign Up
					</button>
                </a>
    			
        </div>
        


<jsp:include page="../../footer.jsp"></jsp:include>