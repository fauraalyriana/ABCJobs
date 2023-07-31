<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle" />
</jsp:include>

<div class="container">

	<div style="margin-top: 20px;" class="container text-center">
	  <div class="row align-items-center">
	    <div class="col">
	      <a href="search" type="button" class="btn btn-outline-light" style="background: #446491">People</a>
	    </div>
	    <div class="col">
	      <button type="button" class="btn btn-outline-light" style="background: #446491">Posts</button>
	    </div>
	    <div class="col">
	      <button type="button" class="btn btn-outline-light" style="background: #446491">Jobs</button>
	    </div>
	    <div class="col">
	      <button type="button" class="btn btn-outline-light" style="background: #446491">Companies</button>
	    </div>
	  </div>
	  <hr>
	</div>

	<div class="container" style="margin-top: 20px;" align="center">
    	<form action="search" class="mb-4 d-flex" role="search">
      		<input type="text" class="form-control me-2" type="search" name="q" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
     	 	<button class="btn" style="background: #86A6DF; color: white" type="submit">Search</button>
    	</form>

    <div class="row row-cols-1 row-cols-md-3 g-4" style="margin-top: 20px;">
        <c:forEach var="s" items="${selected}">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">${s.getName()}</h5>
                        <form action="result" method="post">
                            <input type="hidden" name="userId" value="${s.getUser_id()}">
                            <button type="submit" class="btn btn-outline-info">View Profile</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
