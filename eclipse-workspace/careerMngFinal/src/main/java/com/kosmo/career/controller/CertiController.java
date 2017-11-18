package com.kosmo.career.controller;

import java.io.PrintWriter;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.mapper.CertiMapper;
import com.kosmo.career.service.CertiService;
import com.kosmo.career.service.ComService;
import com.kosmo.career.service.ServedService;
import com.kosmo.career.service.ServedServiceImpl;
import com.kosmo.career.service.UserService;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;

@Controller
@RequestMapping("/certi")
public class CertiController {

	private static final Logger logger = LoggerFactory.getLogger(CertiController.class);
	
	@Autowired
	ComService comService;
	
	@Autowired
	UserService userService;
	
	@Autowired 
	CertiService certiService;
	
	@Autowired
	ServedService servedService;
	
	@RequestMapping(value="/main.do")
	public String main(HttpServletRequest request, HttpServletResponse response){
		return "main";
	}
	
	@RequestMapping(value="/join1.do")
	public String join(HttpServletRequest request, HttpServletResponse response){
		return "main_memberJoin1";
	}
	
	@RequestMapping(value="/join2_1.do")
	public String join2_1(HttpServletRequest request, HttpServletResponse response){
		return "main_memberJoin2_1";
	}
	
	@RequestMapping(value="/join2_2.do")
	public String join2_2(HttpServletRequest request, HttpServletResponse response){
		return "main_memberJoin2_2";
	}
	
	
	@RequestMapping(value="/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute CertiVO vo) throws Exception {
		HttpSession session=request.getSession();
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
	        

		if(vo==null) {
			System.out.println("null값");
			out.println("<script>alert('로그인 정보를 확인해주세요.');</script>");
			out.flush();
		}else {
			System.out.println("존재");
		}
		if(vo.getDiv().equals("user")) {
			vo=certiService.login(vo);
			if(vo!=null) {
				System.out.println(vo.getSeq());
				session.setAttribute("UserImpo", userService.login(vo));
				return "userMain";
			}
		}else if(vo.getDiv().equals("com")){
			String id=vo.getId();
			if(id.contains(".")) {//구현중 이건 단체 관리자로 로그인시
				int pos = id.charAt('.');
				vo.setId(id.substring(0, pos));//유저아이디
				vo=certiService.login(vo);
				id.substring(pos+1);//회사아이디
				ServedVO svo=servedService.selectUser(vo.getSeq());
				if(svo!=null) {
					session.setAttribute("ComImpo", comService.selectCom(svo.getCom_seq()));
					return "comMain";
				}
			}else {
				vo=certiService.login(vo);
				if(vo!=null) {
					session.setAttribute("ComImpo", comService.login(vo));
					return "comMain";
				}
				out.println("<script>alert('회원이 존재하지 않습니다.');</script>");
				out.flush();
				return "main";
			}
		}
		out.println("<script>alert('회원이 존재하지 않습니다.');</script>");
		out.flush();
		return "main";
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		return "main";
	}
	
	@RequestMapping(value="/comMain.do")
	public String comMain(HttpServletRequest request, 
			HttpServletResponse response) {
		return "comMain";
	}
	
	@RequestMapping(value="/userMain.do")
	public String userMain(HttpServletRequest request, 
			HttpServletResponse response) {
		return "userMain";
	}
	
	@RequestMapping(value = "/dupIdCheck.do")
	public ResponseEntity<Boolean> dupIdCheck(HttpServletRequest request, HttpServletResponse response, @RequestParam("id") String id) {
		Boolean flag=comService.dupIdCheck(id);//TODO certiService로부터 아이디 중복여부 체크
		logger.info("ID중복체크");
		return new ResponseEntity<Boolean>(flag, HttpStatus.OK);
	}
}
