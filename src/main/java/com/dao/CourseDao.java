package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.course;

public class CourseDao {

	private Connection conn;

	public CourseDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addCourse(course ap) {
		boolean f = false;
		try {

			String sql = "insert into course(uid,reg,session,email,teacher_id,course,feedback) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ap.getUserId());
			ps.setString(2, ap.getReg());
			ps.setString(3, ap.getSesson());
			ps.setString(4, ap.getEmail());
			ps.setInt(5, ap.getTid());
			ps.setString(6, ap.getCourse());
			ps.setString(7, ap.getFeedback());
			
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	public List<course> getAllCourseByLoginStudent(int id) {

		List<course> list = new ArrayList<course>();
		course ap = null;

		try {

			String sql = "select * from course where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new course();
				
				
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				
				ap.setReg(rs.getString(3));
				ap.setSesson(rs.getString(4));
				ap.setEmail(rs.getString(5));
				ap.setTid(rs.getInt(6));
				ap.setCourse(rs.getString(7));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<course> getAllCourseByLoginTeacherId(int id) {

		List<course> list = new ArrayList<course>();
		course ap = null;

		try {

			String sql = "select * from course where teacher_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new course();
				
				
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				
				ap.setReg(rs.getString(3));
				ap.setSesson(rs.getString(4));
				ap.setEmail(rs.getString(5));
				ap.setTid(rs.getInt(6));
				ap.setCourse(rs.getString(7));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<course> getAllCourse() {

		List<course> list = new ArrayList<course>();
		course ap = null;

		try {

			String sql = "select * from course order by id";
			PreparedStatement ps = conn.prepareStatement(sql);
			

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new course();
				
				
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				
				ap.setReg(rs.getString(3));
				ap.setSesson(rs.getString(4));
				ap.setEmail(rs.getString(5));
				ap.setTid(rs.getInt(6));
				ap.setCourse(rs.getString(7));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public int countTeacher() {
		int i = 0;
		try {
			String sql = "select * from teacher";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countRegCourse() {
		int i = 0;
		try {
			String sql = "select * from course";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}
	public int countCourse() {
		int i = 0;
		try {
			String sql = "select * from dept";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}
	

	public int countStudent() {
		int i = 0;
		try {
			String sql = "select * from student_details";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

}
