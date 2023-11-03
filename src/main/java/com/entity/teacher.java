package com.entity;

public class teacher {
	public teacher() {
		super();
	}

	public teacher(String fullname, String mail, String course,String pw) {
		super();
		
		this.fullname = fullname;
		this.mail = mail;
		this.course = course;
		this.pw= pw;
	}
	private int id;
	private String fullname;
	private String mail;
	private String course;
	private String pw;
	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
}
