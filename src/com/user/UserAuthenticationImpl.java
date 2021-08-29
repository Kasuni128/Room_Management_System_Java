package com.user;

public class UserAuthenticationImpl implements UserAuthentication{

	private static UserAuthenticationImpl  unique = null;
	User data;
	String username, password;
	
	
	
	
	
	
	
	
	private UserAuthenticationImpl() {
		
	}
	
	public static UserAuthenticationImpl  getInstance() {
		if(unique == null) {
			unique = new UserAuthenticationImpl();
			
		}
		return unique;
	}

	@Override
	public boolean authenticateUser(User data) {
		
		if(data.getUserName().equals("himasha") && data.getPassword().equals("1234")) {
			return true;
		}else if(data.getUserName().equals("Max") && data.getPassword().equals("1111")) {
			return true;
		}else {
			return false;
		}
		
		
		
	}

	
}
