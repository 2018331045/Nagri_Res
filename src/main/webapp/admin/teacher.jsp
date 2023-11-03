
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
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Teacher</p>
						
						<form action="../addTeacher" method="post">
						
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input type="text"
									required name="pw" class="form-control">
							</div>

							
							<div class="mb-3">
								<label class="form-label">Course</label> <select name="course"
									required class="form-control">
									<option>Select Course</option>

									<%
									DeptDao dao = new DeptDao(DBConnect.getConn());
									List<dept> list = dao.getAllSpecialist();
									for (dept s : list) {
									%>
									<option><%=s.getDeptName()%></option>
									<%
									}
									%>


								</select>
							</div>

							

							

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>


			
		</div>
	</div>
</body>
</html>