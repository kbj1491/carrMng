package com.kosmo.career.android;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.career.service.BusiService;
import com.kosmo.career.service.CarrService;
import com.kosmo.career.service.ComService;
import com.kosmo.career.service.ServedService;
import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.CarrVO;
import com.kosmo.career.vo.ServedVO;

@Controller
@RequestMapping(value="/comAnd")
public class AndComController {
//
//	@Autowired
//	ComService comService;
//	
	@Autowired
	CarrService carrService;
	
	@Autowired
	ServedService servedService;
	
	@Autowired
	BusiService busiService;
	
	@RequestMapping(value="/carrList.do")
	public @ResponseBody List<CarrVO> carrList(
		@RequestBody int cseq){
	return carrService.comCarrList(cseq);
	}
	
	@RequestMapping(value="/userReqList.do")
	public @ResponseBody List<CarrVO> userReqList(
		@RequestBody int cseq){
		return carrService.userCarrReqList(cseq);
	}
	
	@RequestMapping(value="/busiList.do")
	public @ResponseBody List<BusiVO> busiList(
		@RequestBody int cseq){
		BusiVO bvo = new BusiVO();
		bvo.setCom_seq(cseq);
		return busiService.selectBusiList(bvo);
	}
	
	@RequestMapping(value="/userList.do")
	public @ResponseBody List<ServedVO> userList(
		@RequestBody int cseq){
		return servedService.selectUserList(cseq);
	}
	
}
