package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.StudentDao;
import com.db.DBConnect;
import com.entity.student;

@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullname = req.getParameter("reg");
		int reg = Integer.parseInt(fullname);
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		StudentDao dao = new StudentDao(DBConnect.getConn());
		student user = dao.login(reg, password);

		if (user != null) {
			session.setAttribute("stu", user);
			session.setAttribute("studentObj", user.getFullname());
			session.setAttribute("studentObj2", user.getId());
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg3", "invalid email & password");
			resp.sendRedirect("student_login.jsp");
		}

	}

}