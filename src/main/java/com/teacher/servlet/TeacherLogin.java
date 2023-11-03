package com.teacher.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.TeacherDao;
import com.db.DBConnect;
import com.entity.teacher;

@WebServlet("/TeacherLogin")
public class TeacherLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		TeacherDao dao = new TeacherDao(DBConnect.getConn());
		teacher doctor = dao.login(email, password);

		if (doctor != null) {
			session.setAttribute("techObj", doctor.getFullname());
			session.setAttribute("tech", doctor);
			resp.sendRedirect("teacher/index.jsp");
		} else {
			session.setAttribute("tnerror", "invalid email & password");
			resp.sendRedirect("teacher_login.jsp");
		}

	}

}