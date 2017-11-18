package com.kosmo.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.BusiService;
import com.kosmo.career.service.CarrService;
import com.kosmo.career.service.ServedService;
import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.CarrVO;
import com.kosmo.career.vo.ComVO;
import com.kosmo.career.vo.MultiServedVO;
import com.kosmo.career.vo.ServedModVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserComServedVO;
import com.kosmo.career.vo.UserVO;
//사업 컨트롤
@Controller
@RequestMapping(value="/carr")
public class CarrController {

	private static final Logger logger = LoggerFactory.getLogger(CarrController.class);
	
	@Autowired
	CarrService carrService;
	
	@Autowired
	BusiService busiService;
	
	@Autowired
	ServedService servedService;
	
	@RequestMapping(value="/comMain.do")
	public String comMain(HttpServletRequest request, 
			HttpServletResponse response) {
		return "comMain";
	}
	
	@RequestMapping(value="/comCarrList.do")
	public ModelAndView comCarrList(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		ComVO cvo = (ComVO)session.getAttribute("ComImpo");
		List<CarrVO> cList = carrService.comCarrList(cvo.getSeq());
		
		return new ModelAndView("comMain_carrMng/comCarrList","carrList", cList);
	}
	
	@RequestMapping(value="/comCarrReg.do")
	public ModelAndView comCarrInput(HttpServletRequest request, 
			HttpServletResponse response, HttpSession session) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		BusiVO bvo = new BusiVO();
		bvo.setCom_seq(cvo.getSeq());
		List<BusiVO> bList = busiService.selectBusiList(bvo);
		return new ModelAndView("comMain_carrMng/comCarrReg", "busiList", bList);
	}
	
	@RequestMapping(value="/comCarrInsert.do")
	public ModelAndView comCarrInsert(HttpServletRequest request, 
			HttpServletResponse response, @ModelAttribute CarrVO carrVO) {
		int res=carrService.comCarrInsert(carrVO);
		logger.info("경력 등록 : "+res+"명");
		return new ModelAndView("redirect:/carr/comCarrList.do");
	}
	
	
	//사용자측 경력 디테일보기
	@RequestMapping(value="/carrDetail.do")
	public ModelAndView carrDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carr_seq") int carr_seq) {
		CarrVO cvo=(CarrVO)carrService.userCarrDetail(carr_seq);
		return new ModelAndView("userMain_carrMng/userCarrDetail","carrVO",cvo);
	}
	
	
	@RequestMapping(value="/comCarrReq.do")
	public ModelAndView comCarrReq(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		ComVO cvo =(ComVO)session.getAttribute("ComImpo");
		List<CarrVO> carrReqList = (List<CarrVO>)carrService.userCarrReqList(cvo.getSeq());
		
		return new ModelAndView("comMain_carrMng/comCarrReq","carrReqList", carrReqList);
	}

	
	@RequestMapping(value="/carrReqDetail.do")
	public ModelAndView carrReqDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carr_seq") int carr_seq) {
		Map<String, Object> map = (Map<String, Object>)carrService.carrReqDetail(carr_seq);
		return new ModelAndView("comMain_carrMng/comCarrReqDetail","carrDetail",map);
	}
	
	@RequestMapping(value="/comCarrDetail.do")
	public ModelAndView comCarrDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carrRegDate") String carrRegDate) {
		Map<String, Object> map = (Map<String, Object>)carrService.carrComDetail(carrRegDate);
		List<CarrVO> list = (List<CarrVO>)map.get("carrUserList");
		System.out.println(list.size());
		return new ModelAndView("comMain_carrMng/comCarrDetail","carrDetail",map);
	}
	
	@RequestMapping(value="/comCarrPopup.do")
	public ModelAndView comCarrPopup(HttpSession session){
		ComVO cvo = (ComVO)session.getAttribute("ComImpo");
		List<ServedVO> sList = servedService.selectUserList(cvo.getSeq());//TODO
		return new ModelAndView("com/carrMng/comCarrPopup","servedList", sList);
	}
	
	@RequestMapping(value="/carrComAgre.do")
	public String carrComAgre(@RequestParam("carr_seq") List<Integer> cList){
		int res=carrService.carrComAgre(cList);
		logger.info("회사 경력 승인 "+res+"개");
		return "redirect:/carr/comCarrReq.do";
	}
	
	/*
	 * 유저 부분
	 */
	
	@RequestMapping(value="/userMain.do")
	public String userMain(HttpServletRequest request, 
			HttpServletResponse response) {
		return "userMain";
	}
	
	@RequestMapping(value="/userCarrList.do")
	public ModelAndView userCarrList(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserVO uvo=(UserVO)session.getAttribute("UserImpo");
		List<CarrVO> carrList = carrService.userCarrList(uvo.getSeq());
		
		return new ModelAndView("userMain_carrMng/userCarrList","carrList", carrList);
	}
	
	//페이지이동//
	@RequestMapping(value="/userCarrReg.do")
	public String userCarrReg(HttpServletRequest request, 
			HttpServletResponse response) {
		return "userMain_carrMng/userCarrReg";
	}
	
	@RequestMapping(value="/userCarrReqList.do")
	public ModelAndView userCarrReqList(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("UserImpo");
//		Map<String, Object> map = (Map<String, Object>)carrService.userCarrReqList(uvo.getSeq());
		
		Map<String, Object> map = (Map<String, Object>)carrService.carrReqList(uvo.getSeq());
		
		return new ModelAndView("userMain_carrMng/userCarrReqList", "carrReq", map);
	}
	
	@RequestMapping(value="/carrPreview.do")
	public ModelAndView carrPreview(HttpServletRequest request, 
			HttpServletResponse response, HttpSession session) {
		UserVO uvo = (UserVO)session.getAttribute("UserImpo");
		List<CarrVO> carrList=(List<CarrVO>)carrService.userCarrPreview(uvo.getSeq());
		return new ModelAndView("user/carrMng/userCarrPreview","carrList",carrList);
	}
	
	
	
	@RequestMapping(value="/carrComReqDetail.do")
	public ModelAndView carrComReqDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carr_seq") int carr_seq) {
		CarrVO cvo = (CarrVO)carrService.userCarrDetail(carr_seq);
		return new ModelAndView("userMain_carrMng/userCarrReqComDetail","carrVO",cvo);
	}
	
	@RequestMapping(value="/carrUserReqDetail.do")
	public ModelAndView carrUserReqDetail(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carr_seq") int carr_seq) {
		CarrVO cvo = (CarrVO)carrService.userCarrDetail(carr_seq);
		return new ModelAndView("userMain_carrMng/userCarrReqDetail","carrVO",cvo);
	}
	
	@RequestMapping(value="/userCarrInsert.do")
	public ModelAndView userCarrInsert(HttpServletRequest request, 
			HttpServletResponse response, @ModelAttribute CarrVO carrVO) {
		HttpSession session=request.getSession();
		UserVO uvo=(UserVO)session.getAttribute("UserImpo");
		carrVO.setUser_seq(uvo.getSeq());
		System.out.println(carrVO.getBusi_seq());
		int res=carrService.userCarrInsert(carrVO);
		logger.info("경력 등록 : "+res+"명");
		return new ModelAndView("redirect:/carr/userCarrReqList.do");
	}
	
	//userCarrReg Search Busi
	@RequestMapping(value="/search_BusiName.do")
	public @ResponseBody List<CarrVO> autoBusiSearchAjax (
			@RequestParam("searchStr") String searchStr		//data: { searchStr: request.term}
	){
		System.out.println( "searchStr : " + searchStr);
		List<CarrVO> list = carrService.searchBusiName(searchStr); 
		return list;
	} 
	@RequestMapping(value="/comSearch.do")   //해당 회사의 사업 등을 리스트 조회
	   public  @ResponseBody List<CarrVO> comSearch (
	         @RequestParam("comName") String comName){
	      List<CarrVO> list=carrService.comSearch(comName);
	      return list;
	   }

	@RequestMapping(value="/carrUserAgre.do")
	public String carrUserAgre(@RequestParam("carr_seq") List<Integer> cList){
		int res=carrService.carrUserAgre(cList);
		logger.info("회사 경력 승인 "+res+"개");
		return "redirect:/carr/userCarrReqList.do";
	}
}
