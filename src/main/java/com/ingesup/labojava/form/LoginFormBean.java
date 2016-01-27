package com.ingesup.labojava.form;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginFormBean {
	
	@NotEmpty(message="email obligatoire!")
	private String email;
	@NotEmpty(message="mot de passe obligatoire!")
	private String password;
	private boolean rememberMe;
	
	
	// Getters and Setters
	
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
	public boolean isRememberMe() {
		return rememberMe;
	}
	public void setRememberMe(boolean rememberMe) {
		this.rememberMe = rememberMe;
	}
	
	

}
