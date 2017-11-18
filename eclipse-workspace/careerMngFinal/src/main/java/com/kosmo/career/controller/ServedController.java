package com.kosmo.career.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.ServedService;
import com.kosmo.career.util.ExcelTemplateUtil;
import com.kosmo.career.util.ExcelUtil;
import com.kosmo.career.util.ExcelVO;
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
		System.out.println(sList.getSlist().get(0).getUser_seq());
		int res=0;
		for(ServedVO svo : sList.getSlist()) {
			svo.setCom_seq(cvo.getSeq());
			res+=servedService.insertUserList(svo);
		}
		logger.info("회사 : 재직인원 추가"+res+"명");
		return "redirect:/served/comUserReqList.do";
	}
	
	//회사측 사원 요청 관리
	@RequestMapping(value="/comUserReqList.do")
	public ModelAndView comUserReqList(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		Map<String, Object> map = servedService.selectUserReqList(cvo.getSeq());
		return new ModelAndView("comMain_userMng/comUserReq","servedList",map);
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
	
	@RequestMapping(value="/agreServedCom.do")
	public String agreServedCom(@RequestParam("seq") List<Integer> sevedList){
		int i =servedService.agreServedCom(sevedList);
		if(i<1) System.out.println("업데이트 실패");
		logger.info("회사 승인 "+i+"개" );
		return "redirect:/served/servedUserList.do";
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
		List<ServedVO> list = servedService.selectComList(uvo.getSeq());
		
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
		return new ModelAndView("redirect:/served/comReqMng.do");
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
	
	@RequestMapping(value="/searchComPopup/{user_seq}/.do")
	public ModelAndView searchComPopup(@PathVariable int user_seq, @RequestParam("comName") String comName){
		List<ServedVO> sList = new ArrayList<ServedVO>();
		if(comName.equals("")||comName==null){
			sList = servedService.selectComName(comName,user_seq);
		}else{
			sList = servedService.selectNotComList(user_seq);
		}
		return new ModelAndView("user/comMng/userComSearchPopup","servedList", sList);
	}
	
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
	
	@RequestMapping(value="/agreServedUser.do")
	public String agreServedUser(@RequestParam("seq") List<Integer> sevedList){
		int i =servedService.agreServedUser(sevedList);
		if(i<1) System.out.println("업데이트 실패");
		logger.info("회사 승인 "+i+"개" );
		return "redirect:/served/comReqMng.do";
	}
	
	@RequestMapping(value="/excel_import.do",method=RequestMethod.POST)
	public @ResponseBody Map<String, List<ServedVO>> excel_import(@RequestParam("file") MultipartFile mFile){
		logger.info("excel_import call");
		
		String filePath = "C:\\Users\\kim bo sung\\eclipse-workspace\\careerMngFinal\\src\\main\\webapp\\xls_templete";
		if(mFile==null || mFile.isEmpty()){
			throw new RuntimeException("엑셀파일을 선택 해 주세요");
		}
		File destFile = new File(filePath+"\\"+mFile.getOriginalFilename());
		try{
			mFile.transferTo(destFile);
		}catch(IOException e){
			throw new RuntimeException(e.getMessage(),e);
		}
		ExcelVO excelVO = new ExcelVO();
		excelVO.setFilePath(destFile.getAbsolutePath());
		excelVO.setOutputColumns("B", "C", "D", "E", "F", "G", "H");
		excelVO.setStartRow(7);
		System.out.println(destFile.getAbsolutePath());
		ExcelUtil util = new ExcelUtil();
		List<Map<String, String>> list =util.getListByOneSheet(excelVO);

		List<ServedVO> sList = new ArrayList<ServedVO>();
		List<ServedVO> xList = new ArrayList<ServedVO>();
		for(Map<String, String> map : list){
			int seq = Integer.parseInt(map.get("B"));
			String name =map.get("C");
			String endDate =map.get("H");
			Boolean res = false;
			System.out.println("name :" + name + "//");
			System.out.println("here :: "+ seq + " : " + name + "/" + endDate);
			if(name==""||name==null){
				res = false;
			}else{
				res =  servedService.certiUser(name, seq);
			}
			ServedVO svo = new ServedVO();
			if(res){
				svo.setUser_seq(seq);
				svo.setUserName(name);
				svo.setDept(map.get("D"));
				svo.setTask(map.get("E"));
				svo.setSpot(map.get("F"));
				svo.setTask_start_date(map.get("G"));
				svo.setTask_end_date(map.get("H"));
				sList.add(svo);
			}else{
				svo.setUser_seq(seq);
				svo.setUserName(name);
				xList.add(svo);
			}
			System.out.println("XX" +xList.size()+"  /   OO" +sList.size());
		}
		destFile.delete();
		
		Map<String, List<ServedVO>> resXLS = new HashMap<String, List<ServedVO>>();
		resXLS.put("sList", sList);
		resXLS.put("xList", xList);
		return resXLS;
	}
	
	@RequestMapping("/makeing_user_xls.do")
	public void makeing_user_xls(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		logger.info("boardListExcel call");
		
		ComVO cvo = (ComVO)session.getAttribute("ComImpo");
		int cnt = 0;
		
		List<ServedVO> list = servedService.selectUserList(cvo.getSeq());
		System.out.println("list.size : " + list.size());
		cnt = list.size();
		Map<String , Object> hashMap = new HashMap<String , Object>();
		hashMap.put("comImpo", cvo);
		hashMap.put("total_count", cnt);
		hashMap.put("sList", list);
		ExcelTemplateUtil excel = new ExcelTemplateUtil();
		excel.makeExcelByTemplate(request, response, hashMap, excel.get_Filename("my_excel_file"), "inputUserTemplete.xlsx");
	}
}
