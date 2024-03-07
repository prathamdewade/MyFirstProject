package com.model;

public class UserRegister {

    private String name;
    private String contactNo;
    private String email;
    private String password;
    private String address;
    private int  uid;
	public UserRegister() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserRegister(String name, String contactNo, String email, String password, String address ) {
		super();
		this.name = name;
		this.contactNo = contactNo;
		this.email = email;
		this.password = password;
		this.address = address;
	}
	
	public UserRegister(String name, String contactNo, String email, String password, String address, int uid) {
		super();
		this.name = name;
		this.contactNo = contactNo;
		this.email = email;
		this.password = password;
		this.address = address;
		this.uid = uid;
	}
	
	
	@Override
	public String toString() {
		return "UserRegister [name=" + name + ", contactNo=" + contactNo + ", email=" + email + ", password=" + password
				+ ", address=" + address + ", uid=" + uid + "]";
	}

	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
    
	
}

