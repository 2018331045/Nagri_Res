<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<%@include file="component/allcss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container p-5">
		<div class="row">
		
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Admin Login</p>
						<% 
if(session.getAttribute("success2") != null)
{
	String successMessage = (String) session.getAttribute("success2");
	session.removeAttribute("success2");
	%> <p>Admin <%= successMessage %></p>
	<% 
	
} 

%>
<% session.removeAttribute("success"); %>
<%
if(session.getAttribute("errorMsg2") != null)
{
	String errorMessage = (String) session.getAttribute("errorMsg");
	session.removeAttribute("errorMsg2");
	%> <p>Failure in Login</p>
	<% 
	
} 

%>
						
						
						
						<form action="AdminLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Login</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>