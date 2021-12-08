package com.ospk.edu.model;
 
public class MemberVo {

	private String id = "";
	private String name = "";
	private String email = "";
	private String password = "";
	private String phonenum = ""; 
	
	public MemberVo() {
		super();
	}

	public MemberVo(String id, String name, String email, String password, String phonenum) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phonenum = phonenum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", name=" + name + ", "
				+ "email=" + email + ", password=" + password + ", "
				+ "phonenum=" + phonenum + "]";
	} 
}
