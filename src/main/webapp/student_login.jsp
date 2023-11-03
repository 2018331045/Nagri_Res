<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<%@include file="component/allcss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container p-4">
		<div class="row">
		
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					<% 
		if(session.getAttribute("logout_msg") != null)
{
	String successMessage = (String) session.getAttribute("logout_msg");
	session.removeAttribute("logout_msg");
	
	%> <p>Student <%= successMessage %></p>
	<% 
	
} 

%>
						<p class="fs-4 text-center"><b>Student Login</b></p>
						
						
						
						<form action="StudentLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Registration</label> <input required
									name="reg" type="number" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Login</button>
						
						</form>
					<br> Don't have an account? <a href="signup.jsp"
							class="text-decoration-none"> create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

</body>

</html>