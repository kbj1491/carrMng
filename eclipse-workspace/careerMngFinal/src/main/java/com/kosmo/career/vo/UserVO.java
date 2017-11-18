package com.kosmo.career.vo;

import org.springframework.web.multipart.MultipartFile;

public class UserVO extends CertiVO{
	
	private String name;//사용자명
	private String email;//이메일
	private String tel;//전화번호
	private String addr;//주소
	private String birthDate;//생년월일
	private String profile_img_orig;//프로필 이미지명
	private String profile_img_sys;//프로필 시스템명
	private String emailBool;//이메일수신여부
	private String smsBool;//sms수신여부
	private String delBool;
	
	private MultipartFile uploadFile;
	
	
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getDelBool() {
		return delBool;
	}
	
	public void setDelBool(String delBool) {
		this.delBool = delBool;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate.substring(0, 10);
	}
	public String getProfile_img_orig() {
		return profile_img_orig;
	}
	public void setProfile_img_orig(String profile_img_orig) {
		this.profile_img_orig = profile_img_orig;
	}
	public String getProfile_img_sys() {
		return profile_img_sys;
	}
	public void setProfile_img_sys(String profile_img_sys) {
		this.profile_img_sys = profile_img_sys;
	}
	public String getEmailBool() {
		return emailBool;
	}
	public void setEmailBool(String emailBool) {
		this.emailBool = emailBool;
	}
	public String getSmsBool() {
		return smsBool;
	}
	public void setSmsBool(String smsBool) {
		this.smsBool = smsBool;
	}
	
	
}
