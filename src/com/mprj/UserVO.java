package com.mprj;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVO {
	
	private String UserDate;
	private String UserName;
	private String UserRegNum1;
	private String UserRegNum2;
	private String UserId;     
	private String UserPwd;
	private String UserPwdCheck;
	private String UserNick;
	private String UserGender;
	private String UserEmail1;
	private String UserEmail2;
	private String UserPhoneNumber1;
	private String UserPhoneNumber2;
	private String UserPhoneNumber3;
	private String UserCity;
	private String UserGames;          // ���� �����Ѱŵ� �ֱ�(���� �ȳ���) ������������ Ȯ��
	
	public UserVO(){}
	public UserVO(String UserDate, int UserAge, String UserName, String UserRegNum1, String UserRegNum2, String UserId, String UserPwd, String UserPwdCheck, String UserNick, String UserGender, String UserEmail1, String UserEmail2, String UserPhoneNumber1, String UserPhoneNumber2, String UserPhoneNumber3, String UserCity, String UserGames){
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date time = new Date();
		
		this.UserDate = format1.format(time);
		this.UserName = UserName;
		this.UserRegNum1 = UserRegNum1;
		this.UserRegNum2 = UserRegNum2;
		this.UserId = UserId;
		this.UserPwd = UserPwd;
		this.UserPwdCheck = UserPwdCheck;
		this.UserNick = UserNick;
		this.UserGender = UserGender;
		this.UserEmail1 = UserEmail1;
		this.UserEmail2 = UserEmail2;
		this.UserPhoneNumber1 = UserPhoneNumber1;
		this.UserPhoneNumber2 = UserPhoneNumber2;
		this.UserPhoneNumber3 = UserPhoneNumber3;
		this.UserCity = UserCity;
		this.UserGames = UserGames;
	}
	
	public String getUserDate() {
		return UserDate;
	}
	public void setUserDate(String userDate) {
		UserDate = userDate;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserRegNum1() {
		return UserRegNum1;
	}
	public void setUserRegNum1(String userRegNum1) {
		UserRegNum1 = userRegNum1;
	}
	public String getUserRegNum2() {
		return UserRegNum2;
	}
	public void setUserRegNum2(String userRegNum2) {
		UserRegNum2 = userRegNum2;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getUserPwd() {
		return UserPwd;
	}
	public void setUserPwd(String userPwd) {
		UserPwd = userPwd;
	}
	public String getUserPwdCheck() {
		return UserPwdCheck;
	}
	public void setUserPwdCheck(String userPwdCheck) {
		UserPwdCheck = userPwdCheck;
	}
	public String getUserNick() {
		return UserNick;
	}
	public void setUserNick(String userNick) {
		UserNick = userNick;
	}
	public String getUserGender() {
		return UserGender;
	}
	public void setUserGender(String userGender) {
		UserGender = userGender;
	}
	public String getUserEmail1() {
		return UserEmail1;
	}
	public void setUserEmail1(String userEmail1) {
		UserEmail1 = userEmail1;
	}
	public String getUserEmail2() {
		return UserEmail2;
	}
	public void setUserEmail2(String userEmail2) {
		UserEmail2 = userEmail2;
	}
	public String getUserPhoneNumber1() {
		return UserPhoneNumber1;
	}
	public void setUserPhoneNumber1(String userPhoneNumber1) {
		UserPhoneNumber1 = userPhoneNumber1;
	}
	public String getUserPhoneNumber2() {
		return UserPhoneNumber2;
	}
	public void setUserPhoneNumber2(String userPhoneNumber2) {
		UserPhoneNumber2 = userPhoneNumber2;
	}
	public String getUserPhoneNumber3() {
		return UserPhoneNumber3;
	}
	public void setUserPhoneNumber3(String userPhoneNumber3) {
		UserPhoneNumber3 = userPhoneNumber3;
	}
	public String getUserCity() {
		return UserCity;
	}
	public void setUserCity(String userCity) {
		UserCity = userCity;
	}
	public String getUserGames() {
		return UserGames;
	}
	public void setUserGames(String userGames) {
		UserGames = userGames;
	}

	
	
	
}
