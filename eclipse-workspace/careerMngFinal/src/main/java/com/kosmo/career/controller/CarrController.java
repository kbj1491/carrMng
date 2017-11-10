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
//		List<CarrVO> cList = carrService.comCarrList(cvo.getSeq());
		List<CarrVO> cList = carrService.comCarrList(2);
		
		return new ModelAndView("comMain_carrMng/comCarrList","carrList", cList);
	}
	
	@RequestMapping(value="/comCarrReg.do")
	public String comCarrInput(HttpServletRequest request, 
			HttpServletResponse response) {
		return "comMain_carrMng/comCarrReg";
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
//		Map<Object> carrReq = (Map<Object>)carrService.userCarrReqList(cvo.getSeq());
		List<CarrVO> carrReqList = (List<CarrVO>)carrService.userCarrReqList(2);
		
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
		List<CarrVO> list =(List<CarrVO>)map.get("carrUserList");
		System.out.println(list.size());
		return new ModelAndView("comMain_carrMng/comCarrDetail","carrDetail",map);
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
//		List<CarrVO> carrList = carrService.userCarrList(uvo.getSeq());
		List<CarrVO> carrList = carrService.userCarrList(1);
		
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
//		Map<String, Object> map = carrService.userCarrReqList(uvo.getSeq());
		Map<String, Object> map = (Map<String, Object>)carrService.carrReqList(1);
		
		return new ModelAndView("userMain_carrMng/userCarrReqList", "carrReq", map);
	}
	
	@RequestMapping(value="/carrPreview.do")
	public ModelAndView carrPreview(HttpServletRequest request, 
			HttpServletResponse response, @RequestParam("carr_seq") List<Integer> carr_seq) {
		List<CarrVO> carrList=(List<CarrVO>)carrService.userCarrPreview(carr_seq);
		return new ModelAndView("userMain_carrMng/userCarrPreview","carrList",carrList);
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
//		carrVO.setUser_seq(uvo.getSeq());
		carrVO.setUser_seq(1);
		int res=carrService.userCarrInsert(carrVO);
		logger.info("경력 등록 : "+res+"명");
		return new ModelAndView("redirect:/carr/userCarrReqList.do");
	}
	
	//userCarrReg Search Busi
	@RequestMapping(value="/search_BusiName.do")
	public @ResponseBody List<BusiVO> autoBusiSearchAjax (
			@RequestParam("searchStr") String searchStr		//data: { searchStr: request.term}
	){
		System.out.println( "searchStr : " + searchStr);
		
		List<BusiVO> list = busiService.searchBusiName(searchStr); 
		//@ResponseBody 사용으로 별도의 json 변환이 필요없다.
		
		for(BusiVO vo : list) {
			System.out.println(vo.getBusiName());
		}
		
		return list;
	} 
	
	@RequestMapping(value="/searchResult_BusiName.do")
	public @ResponseBody List<BusiVO> searchResult_BusiName (
			@RequestParam("searchStr") String searchStr		//data: { searchStr: request.term}
	)  {
		System.out.println( "searchStr : " + searchStr);
		
		List<BusiVO> bList = carrService.searchBusiName(searchStr); 
		//@ResponseBody 사용으로 별도의 json 변환이 필요없다.
		return bList;
	} 

}
