package com.event.model;

public class RegisterModel {

	private int SLNo;
 private String fullName;
 private String email;
 private String userName;
 private String password;
 
 //public int getSLNo() {  
     //return SLNo;  
//} 
 
public void setSLNo(int SLNo) {  
     this.SLNo = SLNo;  
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
 public void setFullName(String fullName) {
 this.fullName = fullName;
 }
 public String getFullName() {
 return fullName;
 }
 public void setEmail(String email) {
 this.email = email;
 }
 public String getEmail() {
 return email;
 }

public int getSLNo() {
	// TODO Auto-generated method stub
	return SLNo;
}
}