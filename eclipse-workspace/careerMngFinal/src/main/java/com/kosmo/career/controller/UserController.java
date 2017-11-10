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

import com.kosmo.career.service.UserService;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService userService;
	
	//certiController에서 구현
//	@RequestMapping(value = "/login.do")
//	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute CertiVO vo) {
//		HttpSession session=request.getSession();
//		try {
//			session.setAttribute("userImpo", userService.login(vo));
//		} catch (Exception e) {
//			e.printStackTrace();
//			logger.info("구분이 적확치 않음");
//		}
//		logger.info("로그인 성공");
//		return new ModelAndView("user/userMain");
//	}
	
	@RequestMapping(value = "/userInsert.do")
	public ModelAndView userInsert(
			HttpServletRequest request, 
			HttpServletResponse response, 
			@ModelAttribute UserVO vo) {
		int res = userService.insertUser(vo);
		logger.info("회원가입 결과"+res);
		if(res>0) {
			return new ModelAndView("main_memberJoin3");
		}else {
			return new ModelAndView("main_memberJoin2_1");
		}
	}
	
	@RequestMapping(value = "/userChk.do")
	public ResponseEntity<List<ServedVO>> dupIdCheck(HttpServletRequest request, HttpServletResponse response, 
			@RequestBody List<ServedVO> slist) {
		List<ServedVO> resList=userService.selectUserNO(slist);
		logger.info("인증 된것들만 리스트 전송");
		return new ResponseEntity<List<ServedVO>>(resList, HttpStatus.OK);
	}
	
	
	
	//CertiController에서 구현
//	@RequestMapping(value = "/dupIdCheck.do")
//	public ResponseEntity<Boolean> dupIdCheck(HttpServletRequest request, HttpServletResponse response, @RequestBody String id) {
//		Boolean flag=userService.dupIdCheck(id);
//		logger.info("ID중복체크");
//		return new ResponseEntity<Boolean>(flag, HttpStatus.OK);
//	}
	
}
