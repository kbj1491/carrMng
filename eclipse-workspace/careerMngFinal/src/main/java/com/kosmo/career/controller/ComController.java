package com.kosmo.career.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.ComService;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ComVO;

@Controller
@RequestMapping("/com")
public class ComController {

	private static final Logger logger = LoggerFactory.getLogger(ComController.class);
	
	@Autowired
	ComService comService;
	
	//CertiController에서 로그인 구현
//	@RequestMapping(value = "/login.do")
//	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute CertiVO vo) {
//		HttpSession session=request.getSession();
//		try {
//			session.setAttribute("comImpo", comService.login(vo));
//		} catch (Exception e) {
//			e.printStackTrace();
//			logger.info("구분이 적확치 않음");
//		}
//		logger.info("로그인 성공");
//		return new ModelAndView("index");
//	}
	
	@RequestMapping(value = "/comInsert.do")
	public ModelAndView comInsert(HttpServletRequest request, HttpServletResponse response, @ModelAttribute ComVO vo) {
		int res = comService.insertCom(vo);
		logger.info("회원가입 결과"+res);
		if(res>0) {
			return new ModelAndView("main_memberJoin3");
		}else {
			return new ModelAndView("main_memberJoin2_1");
		}
	}
	
	
	//개인측 회사 검색
	@RequestMapping(value="/searchCom.do")
	public ResponseEntity<List<ComVO>> servedUpdate(@RequestBody String name){
			List<ComVO> clist = comService.searchCom(name);
			return new ResponseEntity<List<ComVO>>(clist,HttpStatus.OK);
	}
	
	//아이디 중복체크 CertiController에서 구현
	
//	@RequestMapping(value = "/dupIdCheck.do")
//	public ResponseEntity<Boolean> dupIdCheck(HttpServletRequest request, HttpServletResponse response, @RequestBody String id) {
//		Boolean flag=comService.dupIdCheck(id);
//		logger.info("ID중복체크");
//		return new ResponseEntity<Boolean>(flag, HttpStatus.OK);
//	}
}
