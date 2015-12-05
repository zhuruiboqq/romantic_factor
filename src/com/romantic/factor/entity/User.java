package com.romantic.factor.entity;

import org.apache.ibatis.type.Alias;

@Alias("user")
public class User {

	private int id;
	private String username;
	private String email;
	private String password;
	private String repassword;
	private Boolean status;
	private String sign;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String username, String email, String password,
			String repassword, Boolean status) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.repassword = repassword;
		this.status = status;
	}

}
