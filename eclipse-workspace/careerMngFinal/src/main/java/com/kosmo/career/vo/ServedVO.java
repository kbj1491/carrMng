package com.kosmo.career.vo;

import java.util.List;

public class ServedVO {
	
	private int seq;//재직번호	
	private String task;//담당업무	
	private String dept;//부서	
	private String user_agree_bool;//사원 동의여부	
	private String com_agree_bool;	//회사동의여부
	private String task_start_date;//직무 시작일	
	private String task_end_date;//퇴사일	
	private String state;//상태	
	private String reg_date;//등록일	
	private String mod_date;//수정일	
	private int user_seq;//유저번호	
	private int com_seq;//회사번호
	private String userName;//유저이름
	private String userTel;//유저 전화번호
	private String comName;
	private String comTel;
	private String comAddr;
	private String comNum;//회사 사업자번호
	private String spot;//직위
	
	private List<ServedModVO> slist;//수정내용리스트
	
	
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getComTel() {
		return comTel;
	}
	public void setComTel(String comTel) {
		this.comTel = comTel;
	}
	public String getComAddr() {
		return comAddr;
	}
	public void setComAddr(String comAddr) {
		this.comAddr = comAddr;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getUser_agree_bool() {
		return user_agree_bool;
	}
	public void setUser_agree_bool(String user_agree_bool) {
		this.user_agree_bool = user_agree_bool;
	}
	public String getCom_agree_bool() {
		return com_agree_bool;
	}
	public void setCom_agree_bool(String com_agree_bool) {
		this.com_agree_bool = com_agree_bool;
	}
	public String getTask_start_date() {
		return task_start_date;
	}
	public void setTask_start_date(String task_start_date) {
		this.task_start_date = task_start_date;
	}
	public String getTask_end_date() {
		return task_end_date;
	}
	public void setTask_end_date(String task_end_date) {
		this.task_end_date = task_end_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMod_date() {
		return mod_date;
	}
	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}
	public int getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(int user_seq) {
		this.user_seq = user_seq;
	}
	public int getCom_seq() {
		return com_seq;
	}
	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComNum() {
		return comNum;
	}
	public void setComNum(String comNum) {
		this.comNum = comNum;
	}
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
	}
	public List<ServedModVO> getSlist() {
		return slist;
	}
	public void setSlist(List<ServedModVO> slist) {
		this.slist = slist;
	}
	
	
	
}
