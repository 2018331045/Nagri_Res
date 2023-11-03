<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.student"%>
<%@page import="com.entity.teacher"%>
<%@page import="com.dao.TeacherDao"%>
<%@page import="com.dao.CourseDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

body{
	
	font-family: 'Merriweather Sans', sans-serif;
	background: #2c3e50;
	color: #ececec;
	
}

h2{
	text-align: center;
	margin-bottom: 5rem;
	font-size: 4rem;
}

.all-products{
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
}

.product{
	overflow: hidden;
	background: #ffffff;
	color: #21201e;
	text-align: center;
	width: 240px;
	height: 400px;
	padding: 2rem;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 1.2rem;
	margin: 2rem;
}

.product .product-title, .product .product-price{
	font-size: 18px;
}

.product:hover i{
	scale:  1.1;
}

.product:hover {
	box-shadow: 5px 15px 25px #eeeeee;
}

.product img {
	height: 200px;
	margin: 1rem;
	transition: all 0.3s;
}

.product a:link, .product a:visited{
	color: #ececec;
	display: inline-block;
	text-decoration: none;
	background-color: #2c3e50;
	padding: 1.2rem 3rem;
	border-radius: 1rem;
	margin-top: 1rem;
	font-size: 14px;
	transition: all 0.2s;
}

.product a:hover{
	transform: scale(1.1);
}
</style>

</head>
<body>

<%@include file="component/navbar.jsp"%>

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
  
    <div class="carousel-item ">
      <img src="img/sust1.jpg" class="d-block w-100"  height="500px" alt="...">
    </div>
    <div class="carousel-item ">
      <img src="img/sust3.jpg" class="d-block w-100" height="500px"  alt="...">
    </div>
    <div class="carousel-item active ">
      <img src="img/sust4.jpg" class="d-block w-100" height="500px"  alt="...">
    </div>
    
    
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  
  
</div>





			</div>
			<br>
			<section class="products">
			<% CourseDao dao = new CourseDao(DBConnect.getConn());

%>
		<h2>Sust Online Course Registration</h2>
		<div class="all-products">
			<div class="product">
				<i class="fas fa-chalkboard-user fa-4x"></i>
				<div class="product-info">
					<h4 class="product-title">Teacher
					</h4>
					
					<p class="product-price"></p>
					<a class="product-btn" href="#"><%=dao.countTeacher() %></a>

				</div>
			</div>
			<div class="product">
				<i class="fas fa-user-circle fa-4x"></i>
				<div class="product-info">
					<h4 class="product-title">Students
							
					</h4>
					<p class="product-price"></p>
					<a class="product-btn" href="#"><%=dao.countStudent() %></a>

				</div>
			</div>
			<div class="product">
			<i class="far fa-calendar-check fa-4x"></i>
				<div class="product-info">
					<h4 class="product-title">Available Courses
					</h4>
					<p class="product-price"></p>
					<a class="product-btn" href="#"><%=dao.countCourse() %></a>

				</div>
			</div>
			<div class="product">
			<i class="fa-solid fa-building-user fa-4x"></i>
				<div class="product-info">
					<h4 class="product-title">Department
						</h4>
					<p class="product-price"></p>
					<a class="product-btn" href="#">15</a>

				</div>
			</div>
		</div>
	</section>
			
<%@include file="component/footer.jsp"%>
</div>
</body>
</html>