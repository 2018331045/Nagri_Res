<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.student"%>
<%@page import="com.entity.teacher"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.dao.CourseDao"%>
<%@page import="com.entity.course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../component/allcss.jsp"%>


<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<title>Admin Index</title>
</head>
<body>
<%
if(session.getAttribute("adminObj") == null)
{	
	response.sendRedirect("../admin_login.jsp");
}
%>


<% 
		if(session.getAttribute("deptMsg") != null)
{
	String successMessage = (String) session.getAttribute("deptMsg");
	session.removeAttribute("deptMsg");
	
	%> <p> <%= successMessage %></p>
	<% 
	
} 

%>
<%@include file="navbar.jsp" %>
<div class="container p-4 mt-10">
<p class="text-center fs-3" style="color: white ">Admin Dashboard</p>
<div class="row">
<% CourseDao dao = new CourseDao(DBConnect.getConn());

%>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-chalkboard-user fa-3x"></i><br>
						<p class="fs-4 text-center">
		 			<a href="teacher_added.jsp" style="color:green;text-decoration:none;">Teachers </a>	<br>
						
						<%=dao.countTeacher() %> 	
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							<a href="show_student.jsp" style="color:green;text-decoration:none;">Students </a>	<br>
						
							<%=dao.countStudent() %>
							
						</p>
					</div>
				</div>
			</div>

		
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							<a href="patient.jsp" style="color:green;text-decoration:none;">Course Taken </a>	<br>
							<%=dao.countRegCourse() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 offset-md-4 mt-4">
<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-building-user fa-3x"></i><br>
						<p class="fs-4 text-center">
							Add Course <br>
							<%=dao.countCourse() %>
						</p>
						
					</div>
				</div>  
				

			</div>

		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addDept" method="post">

						<div class="form-group">
							<label>Enter Course Name</label> <input type="text"
								name="dept" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>


</div>
</body>
</html>