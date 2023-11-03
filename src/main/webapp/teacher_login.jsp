<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Login</title>
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
		<% 
						if(session.getAttribute("tnerror") != null)
				{
					String successMessage = (String) session.getAttribute("tnerror");
					session.removeAttribute("tnerror");
					
					%> <p><%= successMessage %></p>
					<% 
					
				} 

		%>
						<p class="fs-4 text-center">Teacher Login</p>
						
						
						
						<form action="TeacherLogin" method="post">
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
<!--   <%@include file="component/footer.jsp"%> -->
</html>