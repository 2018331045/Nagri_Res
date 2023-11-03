package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import com.entity.student;
import com.entity.teacher;

import java.sql.Connection;

public class StudentDao {
	private Connection conn;

	public StudentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean studentRegister(student u) {
		boolean f = false;

		try {
			String sql = "insert into student_details(fullname,reg,password) values(?,?,?) ";

			//here we are setting values in database which was taken by signup using student class
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getFullname());
			
			ps.setInt(2,u.getReg());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
				//IF EVERYTHING IS OK IT WILL RETURN TRUE
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	public student login(int em, String psw) {
		student u = null;

		try {
			String sql = "select * from student_details where reg=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			//checking reg and name
			ps.setInt(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();

			//collecting user details
			while (rs.next()) {
			
				u = new student();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setReg(rs.getInt(3));
				u.setPassword(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;
	}
	public List<student> getAllStudent() {
		List<student> list = new ArrayList<student>();
		student d = null;
		try {

			String sql = "select * from student_details order by id";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new student();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2)); 
				d.setReg(rs.getInt(3));
				d.setPassword(rs.getString(4));
				list.add(d);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


}
