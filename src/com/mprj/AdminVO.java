package com.mprj;

public class AdminVO {
	
	private String AdminId ;
	private String AdminPwd;
	private String AdminPwdCheck;
	private String AdminName ;
	private String AdminRegNum1;
	private String AdminRegNum2;
	private String AdminPhoneNumber1;
	private String AdminPhoneNumber2;
	private String AdminPhoneNumber3;
	private String AdminGender;
	private String AdminEmail1;
	private String AdminEmail2;
	private String AdminAdress;
	
	public AdminVO(){}
	public AdminVO(String AdminName, String AdminRegNum1, String AdminRegNum2, String AdminId, String AdminPwd, String AdminPwdCheck, String AdminGender, String AdminEmail1, String AdminEmail2, String AdminPhoneNumber1, String AdminPhoneNumber2, String AdminPhoneNumber3, String AdminAdress){
		
		this.AdminId = AdminId;
		this.AdminPwd = AdminPwd;
		this.AdminPwdCheck = AdminPwdCheck;
		this.AdminName = AdminName;
		this.AdminRegNum1 = AdminRegNum1;
		this.AdminRegNum2 = AdminRegNum2;
		this.AdminGender = AdminGender;
		this.AdminPhoneNumber1 = AdminPhoneNumber1;
		this.AdminPhoneNumber2 = AdminPhoneNumber2;
		this.AdminPhoneNumber3 = AdminPhoneNumber3;
		this.AdminEmail1 = AdminEmail1;
		this.AdminEmail2 = AdminEmail2;
		this.AdminAdress = AdminAdress;
	}
	
	
	public String getAdminName() {
		return AdminName;
	}
	public void setAdminName(String adminName) {
		AdminName = adminName;
	}
	public String getAdminRegNum1() {
		return AdminRegNum1;
	}
	public void setAdminRegNum1(String adminRegNum1) {
		AdminRegNum1 = adminRegNum1;
	}
	public String getAdminRegNum2() {
		return AdminRegNum2;
	}
	public void setAdminRegNum2(String adminRegNum2) {
		AdminRegNum2 = adminRegNum2;
	}
	public String getAdminId() {
		return AdminId;
	}
	public void setAdminId(String adminId) {
		AdminId = adminId;
	}
	public String getAdminPwd() {
		return AdminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		AdminPwd = adminPwd;
	}
	public String getAdminPwdCheck() {
		return AdminPwdCheck;
	}
	public void setAdminPwdCheck(String adminPwdCheck) {
		AdminPwdCheck = adminPwdCheck;
	}
	public String getAdminGender() {
		return AdminGender;
	}
	public void setAdminGender(String adminGender) {
		AdminGender = adminGender;
	}
	public String getAdminEmail1() {
		return AdminEmail1;
	}
	public void setAdminEmail1(String adminEmail1) {
		AdminEmail1 = adminEmail1;
	}
	public String getAdminEmail2() {
		return AdminEmail2;
	}
	public void setAdminEmail2(String adminEmail2) {
		AdminEmail2 = adminEmail2;
	}
	public String getAdminPhoneNumber1() {
		return AdminPhoneNumber1;
	}
	public void setAdminPhoneNumber1(String adminPhoneNumber1) {
		AdminPhoneNumber1 = adminPhoneNumber1;
	}
	public String getAdminPhoneNumber2() {
		return AdminPhoneNumber2;
	}
	public void setAdminPhoneNumber2(String adminPhoneNumber2) {
		AdminPhoneNumber2 = adminPhoneNumber2;
	}
	public String getAdminPhoneNumber3() {
		return AdminPhoneNumber3;
	}
	public void setAdminPhoneNumber3(String adminPhoneNumber3) {
		AdminPhoneNumber3 = adminPhoneNumber3;
	}
	public String getAdminAdress() {
		return AdminAdress;
	}
	public void setAdminAdress(String adminAdress) {
		AdminAdress = adminAdress;
	}
	

}
