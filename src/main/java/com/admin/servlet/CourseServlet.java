package com.admin.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CourseDao;
import com.db.DBConnect;
import com.entity.course;

@WebServlet("/Course")
public class CourseServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("userid"));
		
		String fullname = req.getParameter("name");
		String reg = req.getParameter("reg");
		String session1 = req.getParameter("session");
		
		String email = req.getParameter("email");
		//String phno = req.getParameter("phno");
		String course = req.getParameter("dept");
		int tid = Integer.parseInt(req.getParameter("doct"));
		String feedback = req.getParameter("feedback");

		course ap = new course(userId,fullname,reg,session1,email,tid,course,feedback,"Pending");

		CourseDao dao = new CourseDao(DBConnect.getConn());
		HttpSession session = req.getSession();

		if (dao.addCourse(ap)) {
			session.setAttribute("succMsg", "Reg Sucessfully");
			resp.sendRedirect("student_course.jsp");
		} else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("student_course.jsp");
		}

	}
}
