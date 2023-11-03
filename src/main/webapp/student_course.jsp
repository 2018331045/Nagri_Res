<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.db.DBConnect"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.entity.teacher"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/sust4.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<title>Student Course Reg</title>
</head>

<body>
<%@include file="component/navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	
	<div class="container p-12">
		<div class="row">
			<div class="col-md-6 p-10">
				<img alt="" src="img/doct.jpg">
			</div>

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
					
					
					<% 
						if(session.getAttribute("succMsg") != null)
				{
					String successMessage = (String) session.getAttribute("succMsg");
					session.removeAttribute("succMsg");
					
					%> <p><%= successMessage %></p>
					<% 
					
					
				} 

		%>
		<% 
						if(session.getAttribute("errorMsg") != null)
				{
					String successMessage = (String) session.getAttribute("errorMsg");
					session.removeAttribute("errorMsg");
				
					%> <p><%= successMessage %></p>
					<% 
					
					
				} 

		%>
						<p class="fs-4 fw-bold text-center text-success">Course Registration</p>

						<form class="row g-3" action="Course" method="post">

							

							
								
								<% 
						if(session.getAttribute("studentObj2") != null)
				{
							int id= (Integer)session.getAttribute("studentObj2");
				    
					
					
					%>
					<input type="hidden" name="userid" value=<%=id%>>
					
						<% 
						
					
					
				} 

		%>		
							
								
								<div class="col-md-6"> 
								<label for="inputEmail4" class="form-label">Fullname</label>
								<% if(session.getAttribute("studentObj") != null)
			 	{
					String successMessage = (String) session.getAttribute("studentObj");
					//session.removeAttribute("tnerror");
					
					%><input
									required type="text" class="form-control" value="<%= successMessage  %>" >
					<% 
					
				}
				 %>
								
								
								
							</div>
							
 <%
									
											student user = (student) session.getAttribute("stu");
							 
									
									%>
							

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Registration Number</label> <input
									required type="text" class="form-control" name="reg" value="<%=user.getReg() %>" >
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Session</label> <input type="text" class="form-control" required
									name="session">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>
							
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Dept</label> <input
									required type="name" class="form-control" name="dept">
							</div>

							


							

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Course Teacher</label> <select
									required class="form-control" name="doct">
									<option value="">Course Selection</option>

									<%
									TeacherDao dao = new TeacherDao(DBConnect.getConn());
									
									List<teacher> list = dao.getAllTeacher();
									for (teacher d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullname()%> (<%=d.getCourse()%>)
									</option>
									<%
									}
									%>




								</select>
							</div>

							<div class="col-md-12">
								<label>Query If you have any</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>

				
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							

							
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	

</body>
</html>