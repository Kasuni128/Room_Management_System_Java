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
 * This is the Customer model class
 * 
 
 */
public class Customer {

	private String CustomerID;
	
	private String Name;
	
	private String Mobile;

	private String Type;
	
	private String CardNo;
	
	private String Expiry;
	
	private String CVC;
	
	private String Bank;

	/**
	 * @return the customerID
	 */
	public String getCustomerID() {
		return CustomerID;
	}

	/**
	 * @param customerID the customerID to set
	 */
	public void setCustomerID(String customerID) {
		CustomerID = customerID;
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
	
	/**
	 * @return the facultyName
	 */
	public String getMobile() {
		return Mobile;
	}

	/**
	 * @param facultyName the facultyName to set
	 */
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	
	/**
	 * @return the designation
	 */
	public String getType() {
		return Type;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setType(String type) {
		Type = type;
	}
	
	/**
	 * @return the department
	 */
	public String getCardNo() {
		return CardNo;
	}

	/**
	 * @param department the department to set
	 */
	public void setCardNo(String cardNo) {
		CardNo = cardNo;
	}



	public String getExpiry() {
		return Expiry;
	}

	/**
	 * @param address the address to set
	 */
	public void setExpiry(String expiry) {
		Expiry = expiry;
	}
	
	
	
	/**
	 * @return the address
	 */
	

	/**
	 * @return the qualifications
	 */
	public String getCVC() {
		return CVC;
	}

	/**
	 * @param qualifications the qualifications to set
	 */
	public void setCVC(String cvc) {
		CVC = cvc;
	}

	/**
	 * @return the gender
	 */
	public String getBank() {
		return Bank;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setBank(String bank) {
		Bank = bank;
	}

	@Override
	public String toString() {
		
		return "Customer ID = " + CustomerID + "\n" + "Customer Name = " + Name + "\n" + "Mobile = " + Mobile + "\n"+ "Payment method = "+ Type + "\n" + "Card Number = " + CardNo+ "\n" + "Expiry = " + Expiry      + "\n" + "CVC = " + CVC + "\n" + "Bank = " + Bank;
	}
}
