<%@page import="com.entity.teacher"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.entity.dept"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DeptDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
    $("#my-element").animate({
      opacity: 0.5,
      left: "+=50",
      height: "toggle"
    }, 3000);
  });
</script>

<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
<div id="my-element">
    Teacher and Course List
  </div>
  <div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
					<p class="fs-4 fw-bold text-center text-success">Teacher List </p>
						<table class="table">
						<thead>
						<tr>
					<!--  	<th score="col">Unique ID</th> -->
						<th score="col">Fullname</th>
						<th score="col">Email</th>
						<th score="col">Course</th>
						<th score="col">Password</th>
						</tr>
						<tbody>
						<%
						TeacherDao dao = new TeacherDao(DBConnect.getConn());
						List<teacher> list = dao.getAllTeacher();
						for (teacher s : list) {
						%>
						<tr>
					<!--  	<td><%= s.getId() %></td> -->
						<td><%= s.getFullname() %></td>
						<td><%= s.getMail() %></td>
						
						<td><%= s.getCourse() %></td>
						
						<td><%= s.getPw() %></td>
						<td >
			<!--  			<a href="teacher.jsp" class="btn btn-sm btn-primary">Edit</a>  -->
						</td> 
						
						</tr>
						<%
						}
						%>						
						</tbody>
						</thead>
						</table>
						
					</div>
				</div>
			</div>

</div>
</div>


		</div>
	</div>
</body>
</html>