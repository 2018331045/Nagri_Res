package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.entity.teacher;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao {
	private Connection conn;

	public TeacherDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean registerTeacher(teacher d) {
		boolean f = false;

		try {
			String sql = "insert into teacher(fullname,email,course,password) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullname());
			
			ps.setString(2, d.getMail());
			ps.setString(3, d.getCourse());
			ps.setString(4, d.getPw());
			
			

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	public List<teacher> getAllTeacher() {
		List<teacher> list = new ArrayList<teacher>();
		teacher d = null;
		try {

			String sql = "select * from teacher order by id";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new teacher();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2)); 
				d.setMail(rs.getString(3));
				d.setCourse(rs.getString(4));
				d.setPw(rs.getString(5));
				
				list.add(d);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public teacher getTeacherById(int id) {

		teacher d = null;
		try {

			String sql = "select * from teacher where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				d = new teacher();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2)); 
				d.setMail(rs.getString(3));
				d.setCourse(rs.getString(4));
				d.setPw(rs.getString(5));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	public teacher login(String email,String pw) {
		
		teacher d = null;
		try {

			String sql = "select * from teacher where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pw);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new teacher();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2)); 
				d.setMail(rs.getString(3));
				d.setCourse(rs.getString(4));
				d.setPw(rs.getString(5));
				
			
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

}

