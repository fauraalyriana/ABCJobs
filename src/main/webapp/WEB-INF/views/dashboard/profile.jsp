<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="../../header.jsp">
            <jsp:param value="Dashboard" name="HTMLtitle" />
        </jsp:include>

        <div class="container">
            <div class="alert alert-success alert-dismissible fade show ${message == null ? " d-none" : "d-flex" }"
                role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
         </div>
            <div class="container py-3">
          <div class="row d-flex justify-content-center align-items-center">
              <div class="card">
                <div class="rounded-top text-white d-flex flex-row" style="background-color: #393e46; height:200px;">
                  <div class="ms-4 mt-5 d-flex flex-column">
<img src="https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1677029695~exp=1677030295~hmac=a07d5e487bc758003444fea64f64f67077e88d0aa2c4b0ed0ae25dc46b5509dd"
            	alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2" style="width: 150px; z-index: 1">                    
            	<button id="follow" type="button" class="btn"
                      style="z-index: 1;"> ${username} </button>
                  </div>
                  <div class="ms-3" style="margin-top: 130px;">
                  <h5>${name}</h5>
            		<p>${title}</p>
                  </div>
                </div>
                <div class="p-4 text-black" style="background-color: #eeeeee;">
                  <div class="d-flex justify-content-end text-center py-1">
                    <div>
                       <a href="update" class="btn" style="background: #86A6DF; color: white">Edit Profile</a>
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
            
            <div class="row g-0 text-center py-5">
				<div class="col-sm-6 col-md-6 p-3 shadow">
				  	<h3>Education</h3>
                        <hr>
                        <c:forEach var="e" items="${ed}">
                            <div class="d-flex align-items-center">
                                <i class='bx bx-book fs-2'></i>
                                <div class="p-3">
                                    <h4>${e[0]} (${e[1].split("-")[0]} - ${e[2].split("-")[0]})</h4>
                                    <small>${e[3]}</small>
                                    <hr>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
			  <div class="col-6 col-md-6 p-3 shadow">
			  	<h3>Experience</h3>
                <hr>
                <c:forEach var="e" items="${ex}">
                    <div class="d-flex align-items-center">
                        <i class='bx bx-map-pin fs-2'></i>
                        <div class="p-3">
                            <h4>${e[0]} (${e[1].split("-")[0]} - ${e[2].split("-")[0]})</h4>
                            <small>${e[3]}</small>
                            <hr>
                        </div>
                    </div>
                </c:forEach></div>
			</div>
			</div>
			</div>
			</div>

			
<jsp:include page="../../footer.jsp"></jsp:include>