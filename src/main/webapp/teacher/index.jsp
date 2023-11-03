<%@page import="com.dao.CourseDao"%>
<%@page import="com.db.DBConnect"%>
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

<title>Teacher Dashboard</title>
<%@include file="../component/allcss.jsp"%>

</head>
<body>
<% 
						if(session.getAttribute("tnerror") != null)
				{
					String successMessage = (String) session.getAttribute("tnerror");
					//session.removeAttribute("tnerror");
					
					%> <p><%= successMessage %></p>
					<% 
					
				} 

		%>
<%@include file="navbar.jsp" %>
<div class="container p-4 mt-10">
<p class="text-center fs-3" style="color: white ">Teacher Dashboard</p>
<div class="row">
<% CourseDao dao = new CourseDao(DBConnect.getConn());

%>
				<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-chalkboard-user fa-3x"></i><br>
						<p class="fs-4 text-center">
						<a href="student.jsp" style="color:green;text-decoration:none;">Registered Students </a>	<br>
						<%=dao.countTeacher() %>
						</p>
					</div>
				</div>
			</div>


		
</div>
</div>

</body>
<!--   <%@include file="../component/footer.jsp"%> -->
</html>