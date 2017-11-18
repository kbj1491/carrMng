package com.kosmo.career.vo;

import java.util.List;

public class BusiVO {
	
	private int comSeq;
	private int busiSeq;
	private String busiName;
	private String chkUser;
	private String chkDept;
	private String chkTel;
	private String regDate;
	private String modDate;
	private String startDate;
	private String endDate;
	private String agreDate;
	private String openBool;
	
	private int com_seq;
	private int busi_seq;
	private String busi_name;
	private String busi_chk_user;//담당자
	private String busi_chk_dept;//담당부서
	private String busi_chk_tel;//담당자 연락처
	private String busi_reg_date;//사업등록일
	private String busi_mod_date;
	private String busi_start_date;
	private String busi_end_date;
	private String busi_agre_date;
	private String busi_open_bool;
	private String busi_expense;
	private String busi_orders_amount;
	private String busi_order_amount;
	private String busi_tax;
	
	private int expense;
	private int ordersAmount;
	private int orderAmount;
	
	private String comName;
	private String comNum;
	private String comAddr;
	private String comTel;
	private int totalUser;
	
	private List<CarrVO> carrList;

	
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

	public int getComSeq() {
		return comSeq;
	}

	public void setComSeq(int comSeq) {
		this.comSeq = comSeq;
	}

	public int getBusiSeq() {
		return busiSeq;
	}

	public void setBusiSeq(int busiSeq) {
		this.busiSeq = busiSeq;
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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		if(regDate!=null&&regDate.length()>=16){
			regDate=regDate.substring(0, 16);
		}
		if(regDate==null){
			regDate="";
		}
		this.regDate = regDate;
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

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		if(startDate!=null&&startDate.length()>=10){
			startDate=startDate.substring(0, 10);
		}
		if(startDate==null){
			startDate="";
		}
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		if(endDate!=null&&endDate.length()>=10){
			endDate=endDate.substring(0, 10);
		}
		if(endDate==null){
			endDate="";
		}
		this.endDate = endDate;
	}

	public String getAgreDate() {
		return agreDate;
	}

	public void setAgreDate(String agreDate) {
		if(agreDate!=null&&agreDate.length()>=10){
			agreDate=agreDate.substring(0, 10);
		}
		if(agreDate==null){
			agreDate="";
		}
		this.agreDate = agreDate;
	}

	public String getOpenBool() {
		return openBool;
	}

	public void setOpenBool(String openBool) {
		this.openBool = openBool;
	}

	public int getExpense() {
		return expense;
	}

	public void setExpense(int expense) {
		this.expense = expense;
	}

	public int getOrdersAmount() {
		return ordersAmount;
	}

	public void setOrdersAmount(int ordersAmount) {
		this.ordersAmount = ordersAmount;
	}

	public int getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
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

	public int getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}

	public int getBusi_seq() {
		return busi_seq;
	}

	public void setBusi_seq(int busi_seq) {
		this.busi_seq = busi_seq;
	}

	public String getBusi_name() {
		return busi_name;
	}

	public void setBusi_name(String busi_name) {
		this.busi_name = busi_name;
	}

	public String getBusi_chk_user() {
		return busi_chk_user;
	}

	public void setBusi_chk_user(String busi_chk_user) {
		this.busi_chk_user = busi_chk_user;
	}

	public String getBusi_chk_dept() {
		return busi_chk_dept;
	}

	public void setBusi_chk_dept(String busi_chk_dept) {
		this.busi_chk_dept = busi_chk_dept;
	}

	public String getBusi_chk_tel() {
		return busi_chk_tel;
	}

	public void setBusi_chk_tel(String busi_chk_tel) {
		this.busi_chk_tel = busi_chk_tel;
	}

	public String getBusi_reg_date() {
		return busi_reg_date;
	}

	public void setBusi_reg_date(String busi_reg_date) {
		if(busi_reg_date!=null&&busi_reg_date.length()>=10){
			busi_reg_date=busi_reg_date.substring(0, 10);
		}
		if(busi_reg_date==null){
			busi_reg_date="";
		}
		this.busi_reg_date = busi_reg_date;
	}

	public String getBusi_mod_date() {
		return busi_mod_date;
	}

	public void setBusi_mod_date(String busi_mod_date) {
		if(busi_mod_date!=null&&busi_mod_date.length()>=16){
			busi_mod_date=busi_mod_date.substring(0, 16);
		}
		if(busi_mod_date==null){
			busi_mod_date="";
		}
		this.busi_mod_date = busi_mod_date;
	}

	public String getBusi_start_date() {
		return busi_start_date;
	}

	public void setBusi_start_date(String busi_start_date) {
		if(busi_start_date!=null&&busi_start_date.length()>=10){
			busi_start_date=busi_start_date.substring(0, 10);
		}
		if(busi_start_date==null){
			busi_start_date="";
		}
		this.busi_start_date = busi_start_date;
	}

	public String getBusi_end_date() {
		return busi_end_date;
	}

	public void setBusi_end_date(String busi_end_date) {
		if(busi_end_date!=null&&busi_end_date.length()>=10){
			busi_end_date=busi_end_date.substring(0, 10);
		}
		if(busi_end_date==null){
			busi_end_date="";
		}
		this.busi_end_date = busi_end_date;
	}

	public String getBusi_agre_date() {
		return busi_agre_date;
	}

	public void setBusi_agre_date(String busi_agre_date) {
		if(busi_agre_date!=null&&busi_agre_date.length()>=16){
			busi_agre_date=busi_agre_date.substring(0, 16);
		}
		if(busi_agre_date==null){
			busi_agre_date="";
		}
		this.busi_agre_date = busi_agre_date;
	}

	public String getBusi_open_bool() {
		return busi_open_bool;
	}

	public void setBusi_open_bool(String busi_open_bool) {
		this.busi_open_bool = busi_open_bool;
	}

	public String getBusi_expense() {
		return busi_expense;
	}

	public void setBusi_expense(String busi_expense) {
		this.busi_expense = busi_expense;
	}

	public String getBusi_orders_amount() {
		return busi_orders_amount;
	}

	public void setBusi_orders_amount(String busi_orders_amount) {
		this.busi_orders_amount = busi_orders_amount;
	}

	public String getBusi_order_amount() {
		return busi_order_amount;
	}

	public void setBusi_order_amount(String busi_order_amount) {
		this.busi_order_amount = busi_order_amount;
	}

	public String getBusi_tax() {
		return busi_tax;
	}

	public void setBusi_tax(String busi_tax) {
		this.busi_tax = busi_tax;
	}

	@Override
	public String toString() {
		return "BusiVO [comSeq=" + comSeq + ", busiSeq=" + busiSeq + ", busiName=" + busiName + ", chkUser=" + chkUser
				+ ", chkDept=" + chkDept + ", chkTel=" + chkTel + ", regDate=" + regDate + ", modDate=" + modDate
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", agreDate=" + agreDate + ", openBool="
				+ openBool + ", com_seq=" + com_seq + ", busi_seq=" + busi_seq + ", busi_name=" + busi_name
				+ ", busi_chk_user=" + busi_chk_user + ", busi_chk_dept=" + busi_chk_dept + ", busi_chk_tel="
				+ busi_chk_tel + ", busi_reg_date=" + busi_reg_date + ", busi_mod_date=" + busi_mod_date
				+ ", busi_start_date=" + busi_start_date + ", busi_end_date=" + busi_end_date + ", busi_agre_date="
				+ busi_agre_date + ", busi_open_bool=" + busi_open_bool + ", busi_expense=" + busi_expense
				+ ", busi_orders_amount=" + busi_orders_amount + ", busi_order_amount=" + busi_order_amount
				+ ", busi_tax=" + busi_tax + ", expense=" + expense + ", ordersAmount=" + ordersAmount
				+ ", orderAmount=" + orderAmount + ", comName=" + comName + ", comNum=" + comNum + ", comAddr="
				+ comAddr + ", comTel=" + comTel + ", totalUser=" + totalUser + ", carrList=" + carrList + "]";
	}
	
}
