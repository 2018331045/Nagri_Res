package com.entity;

public class student {
	
	public student() {
		super();
	}
	
	
	
	public student(int reg, String fullname, String password) {
		super();
		this.reg = reg;
		this.fullname = fullname;
		this.password = password;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getReg() {
		return reg;
	}
	public void setReg(int reg) {
		this.reg = reg;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private int id;
	private int reg;
	private String fullname;
	private String password;
	

}
