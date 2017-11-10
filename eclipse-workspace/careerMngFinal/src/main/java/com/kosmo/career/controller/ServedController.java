package com.kosmo.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.ServedService;
import com.kosmo.career.vo.ComVO;
import com.kosmo.career.vo.MultiServedVO;
import com.kosmo.career.vo.ServedModVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserComServedVO;
import com.kosmo.career.vo.UserVO;
//재직자 컨트롤
@Controller
@RequestMapping(value="/served")
public class ServedController {

	private static final Logger logger = LoggerFactory.getLogger(ServedController.class);
	
	@Autowired
	ServedService servedService;
	
	
	//회사측 사원 리스트
	@RequestMapping(value = "/servedUserList.do")
	public ModelAndView servedUserList(
			HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("ComImpo")==null){
			return new ModelAndView("main");
		}
		
		ComVO vo = (ComVO)session.getAttribute("ComImpo");
		System.out.println(vo.getSeq());
		List<ServedVO> list = servedService.selectUserList(vo.getSeq());
		logger.info("회사측 유저 리스트 조회");
		return new ModelAndView("comMain_userMng/comUserList", "servedList", list);
	}
	
	//사원추가 페이지
	@RequestMapping(value="/inputUser.do")
	public String inputUser(HttpServletRequest request, 
			HttpServletResponse response) {
		return "comMain_userMng/comUserReg";
	}
	
	//사원 추가
	@RequestMapping(value = "/UserInsert.do")
	public String UserInsert(
			HttpServletRequest request, 
			HttpServletResponse response,
			@ModelAttribute MultiServedVO sList) {
		HttpSession session = request.getSession();
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		System.out.println(sList.getSlist().size());
		int res=0;
		for(ServedVO svo : sList.getSlist()) {
//			svo.setCom_seq(cvo.getSeq());
			svo.setCom_seq(2);
			res+=servedService.insertUserList(svo);
		}
		logger.info("회사 : 재직인원 추가"+res+"명");
		return "redirect:/served/servedUserList.do";
	}
	
	//회사측 사원 요청 관리
	@RequestMapping(value="/comUserReqList.do")
	public ModelAndView comUserReqList(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
//		List<ServedVO> sList = servedService.selectUserReqList(cvo.getSeq());
		List<ServedVO> sList = servedService.selectUserReqList(2);
		
		return new ModelAndView("comMain_userMng/comUserReq","servedList",sList);
	}
	//사원등록 페이지이동
			@RequestMapping(value="/EmployeeRegistration.do")
			public String EmployeeRegistration(HttpServletRequest request, 
					HttpServletResponse response) {
				return "com/userMng/comRegPopup";
			}
			
			@RequestMapping(value="/chkUser.do")
			public @ResponseBody Boolean certiUser(@RequestParam("name") String name, @RequestParam("seq") int seq){
				logger.info("certiUser"+name);
				return servedService.certiUser(name,seq);
			}
			
	
	
	/*
	 * 유저 쪽 
	 */
	
	//개인이 일하는  회사 조회(경력인증 yy)
	@RequestMapping(value = "/servedComList.do")
	public ModelAndView servedComList(
			HttpServletRequest request, 
			HttpServletResponse response) {
		logger.info("개인측 회사 재직 리스트 조회");
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("UserImpo");
		if(uvo==null) return new ModelAndView("main");
		//List<ServedVO> list = servedService.selectComList(uvo.getSeq());
	List<ServedVO> list = servedService.selectComList(1);
		
		return new ModelAndView("userMain_comMng/userComList", "servedList", list);
	}
	
	
	//회사추가 페이지
	@RequestMapping(value="/inputCom.do")
	public String inputCom(HttpServletRequest request, 
			HttpServletResponse response) {
		return "userMain_comMng/userComReg1";
	}
	
	@RequestMapping(value="/comDirectUserReg.do")
	public String comDirectUserReg(HttpServletRequest request, 
			HttpServletResponse response) {
		return "userMain_comMng/userComReg";
	}
	
	//사원에서  회사 추가
	@RequestMapping(value="/comInsert.do")
	public ModelAndView comInsert(
			HttpServletRequest request, 
			HttpServletResponse response,
			@ModelAttribute ServedVO svo
			) {
		HttpSession session=request.getSession();
		UserVO uvo=(UserVO)session.getAttribute("UserImpo");
		svo.setUser_seq(uvo.getSeq());
	//	svo.setUser_seq(1);
		int res=servedService.insertCom(svo);
		return new ModelAndView("redirect:/served/servedComList.do");
	}
	
	
	@RequestMapping(value="/comReqMng.do")
	public ModelAndView comReqMng(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserVO uvo =(UserVO)session.getAttribute("UserImpo");
//		Map<Object> carrReq = (Map<Object>)carrService.userCarrReqList(cvo.getSeq());
		Map<String, Object> map = (Map<String, Object>)servedService.selectReqList(uvo.getSeq());
		return new ModelAndView("userMain_comMng/userComReq","servedList", map);
	}
	
	//개인이 인증안한  요청 조회(경력인증 ny)
	/*@RequestMapping(value="/comReqMng.do")
	public ModelAndView comReqMng(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("UserImpo");
		List<ServedVO> sList = servedService.selectComReqList(uvo.getSeq());
//		List<ServedVO> sList = (List<ServedVO>)servedService.selectComReqList(1);
		
		return new ModelAndView("userMain_comMng/CompanyRequest","servedList",sList);
	}*/
	
	/*//회사가 개인인 요청한 인증을 안하거나 거절했을시 요청 조회(경력인증 yn)
	@RequestMapping(value="/comReqMng.do")
	public ModelAndView userReqMng(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("UserImpo");
		List<ServedVO> sList = servedService.selectUserReqList(uvo.getSeq());
//		List<ServedVO> sList = (List<ServedVO>)servedService.selectComReqList(1);
		
		return new ModelAndView("userMain_comMng/CompanyRequest","serveduserList",sList);
	}*/
	
	
	//재직회사 디테일
	@RequestMapping(value="/comDetail.do")
	public ModelAndView comDetail(
			HttpServletRequest request, 
			HttpServletResponse response,
			@RequestParam("cseq") int cseq
			) {
		ServedVO svo = servedService.selectCom(cseq);
		return new ModelAndView("userMain_comMng/ComDetail","servedVO",svo);
	}
	
	
	//나의정보 변경 버튼
	@RequestMapping(value="/servedUpdate.do")
	public ResponseEntity<Boolean> servedUpdate(
			HttpServletRequest request, 
			HttpServletResponse response,
			@RequestBody ServedVO svo ){
		Boolean flag = servedService.servedUserUpdate(svo);
		return new ResponseEntity<Boolean>(flag, HttpStatus.OK);
	}
	
	//회사측 사원 요청 세부정보 보기
	@RequestMapping(value="/userReqDetail.do")
	public ModelAndView userReqDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("seq") int seq) {
		ServedVO svo = servedService.selectUserReq(seq);
		return new ModelAndView("comMain_userReqMng/userReqDetail","servedVO", svo);
	}
	
	
	@RequestMapping(value="/comReqDetail.do")
	public ModelAndView comReqDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("served_seq") int seq) {
		ServedVO svo = (ServedVO)servedService.selectComReqDetail(seq);
		return new ModelAndView("userMain_comReqMng/comReqDetail","servedVO", svo);
	}
	
}
