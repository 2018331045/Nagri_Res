

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp" ><i class="fa-solid fa-school"></i>  SUST Courses  </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
    
      <%
if(session.getAttribute("studentObj") != null)
{
	String name = (String) session.getAttribute("studentObj");
	
      %>
      
      <li class="nav-item"><a class="nav-link active" href="student_course.jsp">Register Course</a></li>
				<li class="nav-item"><a class="nav-link active" href="view_course.jsp">View Courses</a></li>
			
				
        </li>
      
      
      <div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							
							<i class="fa-solid fa-circle-user"></i><%= name %>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						
							<li><a class="dropdown-item" href="UserLogout">Logout</a></li>
							
						</ul>
					</div>
      
      
      <%
}
else if(session.getAttribute("studentObj") == null){

  	%>
  	    <li class="nav-item"><a class="nav-link active" href="admin_login.jsp">Admin</a></li>
				<li class="nav-item"><a class="nav-link active" href="teacher_login.jsp">Teacher</a></li>
				<!-- 
				<li class="nav-item"><a class="nav-link active" href="view_doctor.jsp">View Course</a></li>
				 -->
				<li class="nav-item"><a class="nav-link active" href="student_login.jsp"><i class="fa-duotone fa-screen-users"></i> Student</a></li>
         
        </li>
<% 
}

      %>
        
       
      </ul>
      
    </div>
  </div>
</nav>