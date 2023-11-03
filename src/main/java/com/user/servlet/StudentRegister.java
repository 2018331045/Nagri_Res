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

@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			
			//taking input from form
			String fullName = req.getParameter("fullname"); //fullname is defined in signup
			String regParam = req.getParameter("reg");
			int reg = Integer.parseInt(regParam);
			String password = req.getParameter("password");

			student u = new student(reg,fullName, password); //for sending it to dao and take it in db

			//made db connection
			StudentDao dao = new StudentDao(DBConnect.getConn());

			HttpSession session = req.getSession();
			//setting up value
			boolean f = dao.studentRegister(u);

			if (f) {

				session.setAttribute("success", "Register Sucessfully");
				
				resp.sendRedirect("signup.jsp");

			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
