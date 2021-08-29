/**
 * OOP 2018
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.model;

/**
 * This is the User model class
 * 
 
 */
public class User {

	private String UserID;
	
	private String Name;
	
	private String Mobile;

	private String Email;

	private String NIC;

	private String Address;

	
	
	private String NewPassword;
	
	private String ConfirmPassword;

	
	
	public String getUserID() {
		return UserID;
	}

	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		UserID = userID;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
		
	}
	public String getMobile() {
		return Mobile;
	}

	/**
	 * @param address the address to set
	 */
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	/**
	 * @return the designation
	 */
	public String getEmail() {
		return Email;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setEmail(String email) {
		Email = email;
	}

	/**
	 * @return the facultyName
	 */
	public String getNIC() {
		return NIC;
	}

	/**
	 * @param facultyName the facultyName to set
	 */
	public void setNIC(String nic) {
		NIC = nic;
	}
	
	/**
	 * @return the qualifications
	 */
	public String getAddress() {
		return Address;
	}

	/**
	 * @param qualifications the qualifications to set
	 */
	public void setAddress(String address) {
		Address = address;
	}

	/**
	 * @return the department
	 */
	public String getNewPassword() {
		return NewPassword;
	}

	/**
	 * @param department the department to set
	 */
	public void setNewPassword(String newPassword) {
		NewPassword = newPassword;
	}

	/**
	 * @return the address
	 */
	

	

	/**
	 * @return the gender
	 */
	public String getConfirmPassword() {
		return ConfirmPassword;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		
		return "User ID = " + UserID + "\n" + "User Name = " + Name + "\n" + "Mobile = " + Mobile + "\n" + "Email = "
				+ Email+ "NIC = " + NIC + "\n" + "Address = " + Address + "\n" + "\n" + "New Password = " + NewPassword + "\n" + "Confirm Password = " + ConfirmPassword;
	}
}
