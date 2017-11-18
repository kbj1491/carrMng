package com.kosmo.career.vo;

import java.util.List;

public class CarrVO {
	
	private int busi_seq;
	private int user_seq;
	private int carr_seq;
	private String task;
	private String dept;
	private String state;
	private String spot;
	private String hideBool;
	private String userAgreeBool;
	private String comAgreeBool;
	private String taskStartDate;
	private String taskEndDate;
	private String proofDate;
	private String modDate;
	private String carrRegDate;
	
	private String month;
	private String userUnitPrice;
	
	private String userName;
	
	private String comName;
	private String comNum;
	private String comAddr;
	private String comTel;
	
	private String busiName;
	private String chkUser;
	private String chkDept;
	private String chkTel;
	private String busiStartDate;
	private String busiEndDate;
	
	private int totalUser;
	
	private String term;
	
	
	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	private List<CarrVO> carrList;

	public int getBusi_seq() {
		return busi_seq;
	}

	public void setBusi_seq(int busi_seq) {
		this.busi_seq = busi_seq;
	}

	public int getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(int user_seq) {
		this.user_seq = user_seq;
	}

	public int getCarr_seq() {
		return carr_seq;
	}

	public void setCarr_seq(int carr_seq) {
		this.carr_seq = carr_seq;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}

	public String getHideBool() {
		return hideBool;
	}

	public void setHideBool(String hideBool) {
		this.hideBool = hideBool;
	}

	public String getUserAgreeBool() {
		return userAgreeBool;
	}

	public void setUserAgreeBool(String userAgreeBool) {
		this.userAgreeBool = userAgreeBool;
	}

	public String getComAgreeBool() {
		return comAgreeBool;
	}

	public void setComAgreeBool(String comAgreeBool) {
		this.comAgreeBool = comAgreeBool;
	}

	public String getTaskStartDate() {
		return taskStartDate;
	}

	public void setTaskStartDate(String taskStartDate) {
		if(taskStartDate!=null&&taskStartDate.length()>=10){
			taskStartDate=taskStartDate.substring(0, 10);
		}
		if(taskStartDate==null){
			taskStartDate="";
		}
		this.taskStartDate = taskStartDate;
	}

	public String getTaskEndDate() {
		return taskEndDate;
	}

	public void setTaskEndDate(String taskEndDate) {
		if(taskEndDate!=null&&taskEndDate.length()>=10){
			taskEndDate=taskEndDate.substring(0, 10);
		}
		if(taskEndDate==null){
			taskEndDate="";
		}
		this.taskEndDate = taskEndDate;
	}

	public String getProofDate() {
		return proofDate;
	}

	public void setProofDate(String proofDate) {
		if(proofDate!=null&&proofDate.length()>=16){
			proofDate=proofDate.substring(0, 16);
		}
		if(proofDate==null){
			proofDate="";
		}
		this.proofDate = proofDate;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		if(modDate!=null&&modDate.length()>=16){
			modDate=modDate.substring(0, 16);
		}
		if(modDate==null){
			modDate="";
		}
		this.modDate = modDate;
	}

	public String getCarrRegDate() {
		return carrRegDate;
	}

	public void setCarrRegDate(String carrRegDate) {
		if(carrRegDate!=null&&carrRegDate.length()>=16){
			carrRegDate=carrRegDate.substring(0, 16);
		}
		if(carrRegDate==null){
			carrRegDate="";
		}
		this.carrRegDate = carrRegDate;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getUserUnitPrice() {
		return userUnitPrice;
	}

	public void setUserUnitPrice(String userUnitPrice) {
		this.userUnitPrice = userUnitPrice;
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

	public String getComAddr() {
		return comAddr;
	}

	public void setComAddr(String comAddr) {
		this.comAddr = comAddr;
	}

	public String getComTel() {
		return comTel;
	}

	public void setComTel(String comTel) {
		this.comTel = comTel;
	}

	public String getBusiName() {
		return busiName;
	}

	public void setBusiName(String busiName) {
		this.busiName = busiName;
	}

	public String getChkUser() {
		return chkUser;
	}

	public void setChkUser(String chkUser) {
		this.chkUser = chkUser;
	}

	public String getChkDept() {
		return chkDept;
	}

	public void setChkDept(String chkDept) {
		this.chkDept = chkDept;
	}

	public String getChkTel() {
		return chkTel;
	}

	public void setChkTel(String chkTel) {
		this.chkTel = chkTel;
	}

	public String getBusiStartDate() {
		return busiStartDate;
	}

	public void setBusiStartDate(String busiStartDate) {
		if(busiStartDate!=null&&busiStartDate.length()>=10){
			busiStartDate=busiStartDate.substring(0, 10);
		}
		if(busiStartDate==null){
			busiStartDate="";
		}
		this.busiStartDate = busiStartDate;
	}

	public String getBusiEndDate() {
		return busiEndDate;
	}

	public void setBusiEndDate(String busiEndDate) {
		if(busiEndDate!=null&&busiEndDate.length()>=10){
			busiEndDate=busiEndDate.substring(0, 10);
		}
		if(busiEndDate==null){
			busiEndDate="";
		}
		this.busiEndDate = busiEndDate;
	}

	public int getTotalUser() {
		return totalUser;
	}

	public void setTotalUser(int totalUser) {
		this.totalUser = totalUser;
	}

	public List<CarrVO> getCarrList() {
		return carrList;
	}

	public void setCarrList(List<CarrVO> carrList) {
		this.carrList = carrList;
	}
	
}
