<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Sign Up</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					
						<p class="fs-4 text-center"><b>Student Sign Up</b></p>
						
						
						<% 
if(session.getAttribute("success") != null)
{
	String successMessage = (String) session.getAttribute("success");
	
	%> <p>Student <%= successMessage %></p>
	<% 
	
} 

%>
<% session.removeAttribute("success"); %>
<%
if(session.getAttribute("errorMsg") != null)
{
	String errorMessage = (String) session.getAttribute("errorMsg");
	%> <p>Failure in Login</p>
	<% 
	
} 

%>
						
	<!-- 
	Here-> Student reg
	Student reg will take form inputs and sent it to studentDao using Student cons
	StudentDao will collect those inputs and send it to db
	
	
	
	 -->						
						
						<form action="StudentRegister" method="post">
							<div class="mb-3">
								<label class="form-label">Full name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Reg No</label> <input required
									name="reg" type="number" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Register</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>