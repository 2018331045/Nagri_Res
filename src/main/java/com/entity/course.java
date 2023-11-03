package com.entity;

public class course {

	private int id;
	private int userId;
	private String fullName;
	private String reg;
	private String sesson;
private String course;
	
	private String feedback;
	private String status;
	private String email;
	private int tid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getSesson() {
		return sesson;
	}
	public void setSesson(String sesson) {
		this.sesson = sesson;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public course(int userId, String fullName, String reg, String sesson, String email, int tid, String course,
			String feedback, String status) {
		super();
		this.userId = userId;
		this.fullName = fullName;
		this.reg = reg;
		this.sesson = sesson;
		this.email = email;
		this.tid = tid;
		this.course = course;
		this.feedback = feedback;
		this.status = status;
	}
	public course() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
