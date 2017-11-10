package com.kosmo.career.vo;

public class ComVO extends CertiVO{
	
	private String name;//회사명
	private String comNum;//사업자등록번호
	private String tel;//연락처
	private String addr;//주소
	private String leader;//대표자명
	private String pax;//팩스번호
	private String type;//업종
	private String certiBool;//인증여부
	private String delBool;//삭제여부
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComNum() {
		return comNum;
	}
	public void setComNum(String comNum) {
		this.comNum = comNum;
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
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getPax() {
		return pax;
	}
	public void setPax(String pax) {
		this.pax = pax;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCertiBool() {
		return certiBool;
	}
	public void setCertiBool(String certiBool) {
		this.certiBool = certiBool;
	}
	public String getDelBool() {
		return delBool;
	}
	public void setDelBool(String delBool) {
		this.delBool = delBool;
	}
	
}
