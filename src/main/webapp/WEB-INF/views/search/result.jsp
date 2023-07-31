<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Result" name="HTMLtitle" />
</jsp:include>

<div class="container">
	<div class="alert alert-primary alert-dismissible fade show ${message == null ? "d-none" : "d-flex"}" role="alert">
	  ${message}
		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div class="containe py-3">
		<div class="row d-flex justify-content-center align-items-center">
			<div class="card">
 				<div class="rounded-top text-white d-flex flex-row" style="background-color: #393e46; height:200px;">
                	<div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                    	<img src="https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1677029695~exp=1677030295~hmac=a07d5e487bc758003444fea64f64f67077e88d0aa2c4b0ed0ae25dc46b5509dd"
                      		alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                      		style="width: 150px; z-index: 1">
                    	<button id="follow" type="button" class="btn btn-outline-primary" data-mdb-ripple-color="light" style="z-index: 1;"> Follow </button>
                  	</div>
                  	<div class="ms-3" style="margin-top: 130px;">
                  		<h5>${name}</h5>
            			<p>${title}</p>
                  	</div>
                </div>
                <div class="p-4 text-black" style="background-color: #f8f9fa;">
                	<div class="d-flex justify-content-end text-center py-1">
                    	<div>
                      		<p class="mb-1 h5">150</p>
                      		<p class="small text-muted mb-0">Posts</p>
                    	</div>
                    	<div class="px-3">
                      		<p class="mb-1 h5">1026</p>
                      		<p class="small text-muted mb-0">Followers</p>
                    	</div>
                    	<div>
                      		<p class="mb-1 h5">478</p>
                      		<p class="small text-muted mb-0">Following</p>
                    	</div>
                  </div>
				</div>
                
		<div class="row g-0 py-4">
			  <div class="col-sm-6 col-md-6 p-3 shadow">
			  	<h3 align="center">About Me</h3>
                <hr>
                <p>${about}</p></div>
			  <div class="col-6 col-md-6 p-3 shadow">
                    <i class='bx bx-building fs-2'></i>
                    <div class="p-2">
                        <h4>Company</h4>
                        <hr>
                        <small>${company}</small>
                    </div>
                    <i class='bx bx-envelope fs-2'></i>
                    <div class="p-2">
                        <h4>Email</h4>
                        <hr>
                        <small>${email}</small>
                    </div>
                    <i class='bx bx-globe fs-2'></i>
                    <div class="p-2">
                        <h4>Website</h4>
                        <hr>
                        <small>${website}</small>
                    </div>
                    <i class='bx bx-globe fs-2'></i>
                    <div class="p-2">
                        <h4>Address</h4>
                        <hr>
                        <small>${address}</small>
                    </div>
                </div>
            </div>
	
		
			</div>
		</div>
	</div>			
</div>
    
<script>
	const followBtn = document.querySelector("#follow");
	followBtn.addEventListener("click", () => {
		if(followBtn.innerHTML == "Follow") {
			followBtn.classList.remove("btn-dark");
			followBtn.classList.add("btn-outline-dark");
			followBtn.innerHTML = "Unfollow";
		} else {
			followBtn.classList.add("btn-dark");
			followBtn.classList.remove("btn-outline-light");
			followBtn.innerHTML = "Follow";
		}
	});
</script>

<jsp:include page="../../footer.jsp"></jsp:include>