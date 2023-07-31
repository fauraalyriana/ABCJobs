<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="../../header.jsp">
        <jsp:param value="Profile" name="HTMLtitle" />
    </jsp:include>

<div class="container">
	<div class="alert alert-success alert-dismissible fade show ${message == null ? " d-none" : "d-flex" }" role="alert">
                ${message}
    	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
    
<form action="update" method="post">
	<div class="row border rounded-3 p-3 mb-4">
    	<div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
         	<img src="https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1677029695~exp=1677030295~hmac=a07d5e487bc758003444fea64f64f67077e88d0aa2c4b0ed0ae25dc46b5509dd"
            	alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2" style="width: 150px; z-index: 1">
        </div>
        <div class="col-8">
        	<div class="form-floating mb-3">
        		<input type="text" class="form-control" id="username" name="username" value="${username}" required>
            		<label for="username">Username</label>
       		</div>
       		<div class="form-floating mb-3">
        		<input type="text" class="form-control" id="email" name="email" value="${email}" required>
            		<label for="email">Email</label>
       		</div>
        	<div class="form-floating mb-3">
        		<input type="text" class="form-control" id="name" name="name" value="${name}" required>
            		<label for="name">Name</label>
        	</div>
        	<div class="form-floating mb-3">
        		<input class="form-control" name="address" id="address" name="address" value="${address}" required>
            		<label for="address">Address</label>
         	</div>
         	<div class="form-floating mb-3">
         		<input type="number" class="form-control" id="age" name="age" value="${age}" required>
            		<label for="age">Age</label>
         	</div>
         </div>
         	<div class="col-2 align-self-center">
            	<button type="submit" class="btn" style="background: #86A6DF; color: white">Save Changes</button>
            </div>
	</div>
</form>

<div class="row g-0 text-center">
	<div class="col-sm-6 col-md-6 p-3 shadow">
		<h3>About Me</h3>
        <hr>
        <p>${about}<p>
    </div>
    <div class="col-6 col-md-6 p-3 shadow">
    	<h3>Your title</h3>
		<hr>
		<p>${title}</p>
	</div>
</div>
			
<div class="row g-0 text-center py-3">
	<div class="col-sm-6 col-md-6 p-3 shadow">
		<h3>Company</h3>
		<hr>
		<p>${company}</p>
	</div>
	<div class="col-6 col-md-6 p-3 shadow">
		<h3>Website</h3>
		<hr>
		<p>${website}</p>
	</div>
</div>

<div class="mb-3 p-3 shadow">
	<div class="d-flex">
    	<h3>Information</h3>
        	<button style="background: #86A6DF; color: white" type="button" class="btn ms-auto" data-bs-toggle="modal" data-bs-target="#information"> Add Information</button>
    	<div class="modal fade" id="information" tabindex="-1" aria-labelledby="informationLabel" aria-hidden="true">
    	
    	<form action="update_information" method="post">
    		<div class="modal-dialog">
	    		<div class="modal-content">
	             	<div class="modal-header">
	                	<h1 class="modal-title fs-5" id="informationLabel">Add Information</h1>
	                    	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    	</div>
	                <div class="modal-body">
	                	<div class="form-floating mb-3">
	                	<h3>About Me</h3>
	        			<hr>
	        			<textarea class="form-control" name="about" id="about" cols="10">${about}</textarea>
	                    </div>
	                    <div class="form-floating mb-3">
	                    	<h3>Your title</h3>
							<hr>
							<textarea class="form-control" name="title">${title}</textarea>
	                    </div>
	                    <div class="form-floating mb-3">
	                    	<h3>Company</h3>
							<hr>
							<textarea class="form-control" id="company" name="company">${company}</textarea>
	                    </div>
	                    <div class="form-floating mb-3">
	                        <h3>Website</h3>
							<hr>
							<textarea class="form-control" id="website" name="website">${website}</textarea>
	                    </div>
	                </div>
	                <div class="modal-footer">
	               		<button type="submit" style="background: #86A6DF; color: white" class="btn" data-bs-dismiss="modal" id="exBtn">Confirm</button>
	                </div>
	           	</div>
	       	</div>
    	</form>
    	</div>
	</div>
</div>
  
<div class="mb-3 p-3 shadow">
	<div class="d-flex">
    	<h3>Experience</h3>
       	<button type="button" style="background: #86A6DF; color: white" class="btn ms-auto" data-bs-toggle="modal" data-bs-target="#experiences">Add Experience </button>
    <div class="modal fade" id="experiences" tabindex="-1" aria-labelledby="experiencesLabel" aria-hidden="true">
    	<div class="modal-dialog">
    		<div class="modal-content">
             	<div class="modal-header">
                	<h1 class="modal-title fs-5" id="experiencesLabel">Add Experience</h1>
                    	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                	<div class="form-floating mb-3">
                    	<input type="text" class="form-control" id="position" name="companyName">
                        	<label for="CompanyName">Company Name</label>
                    </div>
                    <div class="form-floating mb-3">
		            	<input type="number" class="form-control" id="year"
		                     name="year" min="1900" max="2099">
		                	<label for="year" >Year</label>
		            </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="jobs" name="jobs">
                        <label for="jobs">Previous Jobs</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="project" name="project">
                        <label for="project">Project Worked</label>
                    </div>
                </div>
                <div class="modal-footer">
               		<button type="button" style="background: #86A6DF; color: white" class="btn" data-bs-dismiss="modal" id="exBtn">Add</button>
                </div>
           	</div>
       	</div>
    	</div>
	</div>
</div>

<div class="mb-3 p-3 shadow">
	<div class="d-flex">
    	<h3>Education</h3>
        	<button type="button" style="background: #86A6DF; color: white" class="btn ms-auto" data-bs-toggle="modal" data-bs-target="#education">Add Education</button>
    	<div class="modal fade" id="education" tabindex="-1" aria-labelledby="educationLabel" aria-hidden="true">
	    	<form action="add_education" method ="post">
	    		<div class="modal-dialog">
		    		<div class="modal-content">
		             	<div class="modal-header">
		                	<h1 class="modal-title fs-5" id="educationLabel">Add Education</h1>
		                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		                </div>
		                <div class="modal-body">
		                	<div class="form-floating mb-3">
		                      <input type="text" class="form-control" id="universityName"
		                          name="universityName">
		                      <label for="universityName">University Name</label>
		                   </div>
		                    <div class="form-floating mb-3">
		                         <input type="number" class="form-control" id="year"
		                             name="year" min="1900" max="2099">
		                         <label for="year" >Year</label>
		                     </div>
		                    <div class="form-floating mb-3">
		                         <input type="text" class="form-control" id="degree" name="degree">
		                         <label for="degree">Degree</label>
		                     </div>
		                     <div class="form-floating mb-3">
		                         <input type="text" class="form-control" id="grades"
		                             name="grades">
		                         <label for="grades">Grades</label>
		                     </div>
		                     <div class="form-floating mb-3">
		                         <input type="text" class="form-control" id="avhievement"
		                             name="achievement">
		                         <label for="achievement">Achievement</label>
		                     </div>
		                </div>
		                <div class="modal-footer">
		               		<button type="submit" style="background: #86A6DF; color: white" class="btn" data-bs-dismiss="modal" id="exBtn">Confirm</button>
		                </div>
	           		</div>
	       		</div>
	    	</form>
    	</div>
	</div>
</div>
                      
</div>

<jsp:include page="../../footer.jsp"></jsp:include>