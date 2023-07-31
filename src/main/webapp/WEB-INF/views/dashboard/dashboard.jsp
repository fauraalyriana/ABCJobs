<jsp:include page="../../header.jsp">
    <jsp:param value="Dashboard" name="HTMLtitle" />
</jsp:include>

<div class="container">
	<div class="row">
		<div class="col-3 mt-5">
			<div class="d-flex flex-column border rounded-3 pb-4">
				<div class="border p-0 rounded-3 border-1">
					<div class="fs-1 d-flex align-items-center justify-content-center text-white" style="height: 25vh; background: #446491">
						<span>${f}</span>
					</div>
				</div>
				<div class="px-4 py-3">
					<h2>${name}</h2>
          			<p>${title}</p>
				</div>
					<a href="profile" class="btn mx-4" type="button" style="background: #86A6DF; color: white">View Profile</a>
			</div>
			
			<div class="py-3 px-4 rounded-3 border mt-3">
    			<div class="border-bottom mb-3">
        			<h4 class="fs-4">Account</h4>
          				<ul>
              			<li><i class="bx bx-chevron-right"></i> <a href="#">Setting</a></li>
              			<li><i class="bx bx-chevron-right"></i> <a href="#">Help</a></li>
              			</ul>
        		</div>
				<div class="border-bottom mb-3">
    				<h4 class="fs-4">Manage</h4>
        			<ul>
              			<li><i class="bx bx-chevron-right"></i> <a href="#">Post & Activity</a></li>
              			<li><i class="bx bx-chevron-right"></i> <a href="#">Jobs posting</a></li>
              		</ul>
    			</div>
    			<div class="border-bottom mb-3">
    				<h4 class="fs-4">My Items</h4>
    				<ul>
        			<li><i class="bx bx-chevron-right"></i> <a href="#">See all my items</a></li>
        			</ul>
    			</div>
			</div>
		</div>

		<div class="col-6 mt-5">
			<div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm">
    			<div class="col py-5" align="center">
      				<h2>WELCOME BACK!</h2>
      				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
    			</div>
    		</div>

			<div class="border rounded-3 mb-3 px-3" id="post1">
				<div class="d-flex align-items-center py-3">
					<ul class="list-group">
						<li class="list-group-item d-flex justify-content-between align-items-center text-white" style="background: #446491">
    						<h4>Recommended for you</h4>
  						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
  							<span style="margin-right: 10px;" class="px-3 py-2 rounded-circle border">J</span>
    							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus corrupti repudiandae non? Quos rem quam praesentium aperiam ipsa distinctio, vero vel? Incidunt nisi aliquam earum!</p>
    								<a href="" class="d-flex align-items-center btn" style="background: #86A6DF; color: white">
          							<i class='bx bx-share-alt'></i> See more </a>
  						</li>
 						<li class="list-group-item d-flex justify-content-between align-items-center">
  							<span style="margin-right: 10px;" class="px-3 py-2 rounded-circle border">O</span>
    							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus corrupti repudiandae non? Quos rem quam praesentium aperiam ipsa distinctio, vero vel? Incidunt nisi aliquam earum!</p>
    								<a href="" class="d-flex align-items-center btn" style="background: #86A6DF; color: white">
          								<i class='bx bx-share-alt'></i> See more </a>
  						</li>
  						<li class="list-group-item d-flex justify-content-between align-items-center">
   							<span style="margin-right: 10px;" class="px-3 py-2 rounded-circle border">R</span>
    							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus corrupti repudiandae non? Quos rem quam praesentium aperiam ipsa distinctio, vero vel? Incidunt nisi aliquam earum!</p>
    								<a href="" class="d-flex align-items-center btn" style="background: #86A6DF; color: white">
          								<i class='bx bx-share-alt'></i> See more </a>
  						</li>
  						<li class="list-group-item d-flex justify-content-between align-items-center">
    						<h5>See more post</h5>
  						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-3 mt-5">
			<div class="py-3 px-3 rounded-3 border">
    			<div class="border-bottom mb-4">
        			<h5><a href="#">Groups</a></h5>
        		</div>
				<div class=" border-bottom mb-4">
    				<h5><a href="#">Contact</a></h5>
    			</div>
    			<div class="border-bottom mb-4">
    				<h5><a href="#">Following</a></h5>
    			</div>
    			<div class="text-center">
    				<a href="" class="btn" style="background: #86A6DF; color: white">Discover more</a>
    			</div>
			</div>
		
		<div class="col mt-3">
			<div class="py-3 px-4 rounded-3 border">
    			<div class="border-bottom mb-3">
        			<h4 class="fs-4">Email Subject</h4>
          			<p>Check your email</p>
        		</div>
				<div class="border-bottom mb-3">
    				<h4 class="fs-4">Email Subject</h4>
        			<p>Check your email</p>
    			</div>
    			<div class="border-bottom mb-3">
    				<h4 class="fs-4">Email Subject</h4> 
        			<p>Check your email</p>
    			</div>
    			<div class="text-center">
    				<a href="" class="btn" style="background: #86A6DF; color: white">See all notifications</a>
    			</div>
			</div>
		</div>
		
	</div>
</div>

</div>

<jsp:include page="../../footer.jsp"></jsp:include>