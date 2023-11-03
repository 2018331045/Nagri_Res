package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.dept;

public class DeptDao {
	private Connection conn;

	public DeptDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addDept(String spec) {
		boolean f = false;
		try {
			String sql = "insert into dept(dept) values(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, spec);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<dept> getAllSpecialist() {
		List<dept> list = new ArrayList<dept>();
		dept s = null;

		try {
			String sql = "select * from dept";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new dept();
				s.setId(rs.getInt(1));
				s.setDeptName(rs.getString(2));
				list.add(s);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	

}
