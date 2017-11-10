package com.kosmo.career.android;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.career.service.CertiService;
import com.kosmo.career.service.ComService;
import com.kosmo.career.service.UserService;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ComVO;
import com.kosmo.career.vo.UserVO;

@Controller
@RequestMapping(value="/android")
public class AndroidController {
	
	@Autowired
	CertiService certiService;
	
	@Autowired
	ComService comService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/login.do")
	public @ResponseBody CertiVO login(
			@RequestBody CertiVO vo){
		return certiService.login(vo);
	}
	
	@RequestMapping(value="/userImpo.do")
	public @ResponseBody UserVO userImpo(
			@RequestBody int useq){
		return userService.selectUser(useq);
	}
	
	@RequestMapping(value="/comImpo.do")
	public @ResponseBody ComVO comImpo(
			@RequestBody int cseq){
		return comService.selectCom(cseq);
	}
}
