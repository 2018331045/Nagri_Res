package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DeptDao;
import com.db.DBConnect;
import com.entity.student;

@WebServlet("/addDept")
public class AddDept extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String specName = req.getParameter("dept");

		DeptDao dao = new DeptDao(DBConnect.getConn());
		boolean f = dao.addDept(specName);

		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("deptMsg", "Dept Added");
			resp.sendRedirect("admin/index.jsp");
		} else {
			//session.setAttribute("errorMsg", "something wrong on server");
			resp.sendRedirect("admin/index.jsp");
		}
	}
	

}
