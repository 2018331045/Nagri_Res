<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.entity.student"%>
<%@page import="com.entity.teacher"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.entity.course"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.CourseDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<%@include file="navbar.jsp" %>
</head>
<body>
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
									

								</tr>
							</thead>
							<tbody>
								<%
								student user = (student) session.getAttribute("stu");
								teacher t= (teacher) session.getAttribute("tech");
										
								
								CourseDao dao = new CourseDao(DBConnect.getConn());
								TeacherDao dao2 = new TeacherDao(DBConnect.getConn());
								List<course> list2= dao.getAllCourseByLoginTeacherId(t.getId());
								
								for (course ap : list2) {
									teacher d=dao2.getTeacherById(ap.getTid()); 
									
								%>
								<tr>
									
									<td><%=ap.getReg() %></td>
									<td><%=ap.getSesson() %></td>
								<td><%=t.getCourse()%></td>
								
									
									
								</tr>
								 <%
								 
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

			
		</div>
	</div>


</body>

</html>