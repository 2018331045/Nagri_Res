<%@page import="com.entity.student"%>
<%@page import="com.entity.teacher"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.entity.course"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.CourseDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Course</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/sust4.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	
<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Registered Courses</p>
						<table class="table">
							<thead>
								<tr>
									
									<th scope="col">Registration No</th>
									
									<th scope="col">Session</th>
									<th scope="col">Courses</th>
									<th scope="col">Teacher</th>

								</tr>
							</thead>
							<tbody>
								<%
								student user = (student) session.getAttribute("stu");
								
								CourseDao dao = new CourseDao(DBConnect.getConn());
								TeacherDao dao2 = new TeacherDao(DBConnect.getConn());
								List<course> list2= dao.getAllCourse();
								
								for (course ap : list2) {
									teacher d=dao2.getTeacherById(ap.getTid()); 
									
								%>
								<tr>
									
									<td><%=ap.getReg() %></td>
									<td><%=ap.getSesson() %></td>
								<td><%=d.getCourse()%></td>
									<td><%=d.getFullname()%></td>
									
								</tr>
								 <%
								 
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

			<div class="col-md-3 p-3">
				<img alt="" src="img/sust1.jpg">
			</div>
		</div>
	</div>


</body>
</html>