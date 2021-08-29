package com.user;

public class AdminAuthenticationImpl implements AdminAuthentication{

	private static AdminAuthenticationImpl  unique = null;
	User data;
	String username, password;
	
	
	
	
	
	
	
	
	private AdminAuthenticationImpl() {
		
	}
	
	public static AdminAuthenticationImpl  getInstance() {
		if(unique == null) {
			unique = new AdminAuthenticationImpl();
			
		}
		return unique;
	}

	@Override
	public boolean authenticateUser(User data) {
		
		if(data.getUserName().equals("admin") && data.getPassword().equals("1234")) {
			return true;
		}else if(data.getUserName().equals("admin1") && data.getPassword().equals("1111")) {
			return true;
		}else {
			return false;
		}
		
		
		
	}

	
}
