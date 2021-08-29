package com.user;

public class User {
	String fristName;
	String	lastName;
	String	email;
	String	phone;
	String	userName;
	String	password;
	
	public User(){
	}

	public User(String fristName, String lastName, String email, String phone, String userName, String password) {
		super();
		this.fristName = fristName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
	}

	public String getFristName() {
		return fristName;
	}

	public void setFristName(String fristName) {
		this.fristName = fristName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
