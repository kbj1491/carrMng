package com.kosmo.career.vo;

public class CertiVO {
	
	private int seq;//회원번호
	private String id;//아이디
	private String pw;//비밀번호
	private String div;//븐루
	private String regDate;//등록일
	private String modDate;//수정일
	private String delBool;
	
	private String certi_seq;
	
	public String getCerti_seq() {
		return certi_seq;
	}
	public void setCerti_seq(String certi_seq) {
		this.certi_seq = certi_seq;
	}
	
	public String getDelBool() {
		return delBool;
	}
	public void setDelBool(String delBool) {
		this.delBool = delBool;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getDiv() {
		return div;
	}
	public void setDiv(String div) {
		this.div = div;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	
}
