<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin Dashboard" name="HTMLtitle" />
</jsp:include>

	<div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm">
    	<div class="col text-center" style="margin-top: 25%;">
      		<h2>Welcome Back ${adminName} !</h2>
      		<hr>
      		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
    	</div>
    	<div class="col">
    	<img src=https://img.freepik.com/free-vector/personal-files-concept-illustration_114360-4049.jpg?t=st=1678258246~exp=1678258846~hmac=677f506312e2451f088d1d31d37872e5d92ee3b2cce1654729cb7547fcb28891
      		style="width: 100%;">
    	</div>
    </div>
    
    <div class="container">
    <div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm py-3">
    <div>
				<h2 class="text-center py-3">List Users</h2>
			  <table class="table table-striped my-3">
    		<tr>
		        <th scope="col">User id</th>
		        <th scope="col">Name</th>
		        <th scope="col">Email</th>
		        <th scope="col">Password</th>
		        <th scope="col">Address</th>
		        <th scope="col">Age</th>
		        <th scope="col">Username</th>
		        <th scope="col">About me</th>
		        <th scope="col">Company</th>
		        <th scope="col">Title</th>
		        <th scope="col">Website</th>
		        <th scope="col">Action</th>
		      </tr>
    	
    		<%
			    int index = 1;
			    List<Object[]> collectedData = (List<Object[]>) request.getAttribute("collectedData");
			    for (Object[] data : collectedData) {
			        int id = (Integer) data[0];
			        String name = (String) data[1];
			        String email = (String) data[2];
			        String password = (String) data[3];
			        String address = (String) data[4];
			        int age = (Integer) data[5];
			        String username = (String) data[6];
			        String aboutMe = (String) data[7];
			        String company = (String) data[8];
			        String title = (String) data[9];
			        String website = (String) data[10];
			        String modalId = "delete-modal-" + index;
			%>
			    <!-- Modal -->
			    <div class="modal fade" id="<%= modalId %>" tabindex="-1" aria-labelledby="<%= modalId %>-label" aria-hidden="true">
			        <div class="modal-dialog">
			            <div class="modal-content">
			                <div class="modal-header">
			                    <h5 class="modal-title" id="<%= modalId %>-label">Delete Confirmation</h5>
			                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			                </div>
			                <div class="modal-body">
			                    Are you sure you want to delete data with ID <%= id %>?
			                </div>
			                <div class="modal-footer">
			                	<form action="deleteUser" method="get" class="ms-auto">
				           			<input type="hidden" name="selectedId" value="<%= id %>">
					           		<button type="submit" class="btn btn-outline-dark ms-auto">Delete</button>
						   		</form>
			                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			                </div>
			            </div>
			        </div>
			    </div>
			    
			    <!-- Table row -->
			    <tr>
			        <td><%= id %></td>
			        <td><%= name %></td>
			        <td><%= email %></td>
			        <td><%= password %></td>
			        <td><%= address %></td>
			        <td><%= age %></td>
			        <td><%= username %></td>
			        <td><%= aboutMe %></td>
			        <td><%= company %></td>
			        <td><%= title %></td>
			        <td><%= website %></td>
			        <td>
			            <form action="editByAdmin"  class="ms-auto">
		           			<input type="hidden" name="selectedId" value="<%= id %>">
			           		<button type="submit" class="btn btn-outline-info ms-auto">Edit</button>
				   		</form>
				   		<br>
			            <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#<%= modalId %>" data-id="<%= id %>">
			                Delete
			            </button>
			        </td>
			    </tr>
			<%
			        index++;
			    }
			%>

			</table>
    	</div>
    </div>
    </div>
    
<jsp:include page="../../footer.jsp"></jsp:include>