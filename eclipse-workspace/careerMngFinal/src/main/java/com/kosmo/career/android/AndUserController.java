package com.kosmo.career.android;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.career.service.CarrService;
import com.kosmo.career.service.ServedService;
import com.kosmo.career.service.UserService;
import com.kosmo.career.vo.CarrVO;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;

@Controller
@RequestMapping(value="/userAnd")
public class AndUserController {
//	
//	@Autowired
//	UserService userService;
//	
	@Autowired
	CarrService carrService;
	
	@Autowired
	ServedService servedService;
	
	@RequestMapping(value="/carrList.do")
	public @ResponseBody List<CarrVO> carrList(
		@RequestBody int useq){
	return carrService.userCarrList(useq);
	}
	
	@RequestMapping(value="/comReqList.do")
	public @ResponseBody List<CarrVO> comReqList(
		@RequestBody int useq){
		return carrService.selectNotAgreeUserList(useq);
	}
	
	@RequestMapping(value="/reqList.do")
	public @ResponseBody List<CarrVO> ReqList(
		@RequestBody int useq){
	return carrService.selectNotAgreeUserList(useq);
	}
	
	@RequestMapping(value="/comList.do")
	public @ResponseBody List<ServedVO> comList(
		@RequestBody int useq){
	return servedService.selectComList(useq);
	}
	
	
	
	
}
