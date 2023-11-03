<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: white;">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-building-columns"></i> SUST Courses Admin Panel</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link active" href="teacher.jsp">Add Teacher</a></li>
				<li class="nav-item"><a class="nav-link active" href="patient.jsp">Registered Student</a></li>
			<!--  	<li class="nav-item"><a class="nav-link active" href="patient.jsp">Student</a></li>

-->
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../AdminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>