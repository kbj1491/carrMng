package com.kosmo.career.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.BusiService;
import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.ComVO;
import com.kosmo.career.util.*;

//사업 컨트롤
@Controller
@RequestMapping(value="/busi")
public class BusiController {

	private static final Logger logger = LoggerFactory.getLogger(BusiController.class);
	
	@Autowired
	BusiService busiService;
	
	@RequestMapping(value="/busiList.do")
	public ModelAndView busiList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		
		BusiVO bVO = new BusiVO();
		bVO.setCom_seq(cvo.getSeq());
		List<BusiVO> blist=(List<BusiVO>)busiService.selectBusiList(bVO);
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("comMain_busiMng/comBusiList");
		model.addObject("busiList", blist);
		
		return model;
	}
	
	@RequestMapping(value="/busiListExcel.do")
	public void busiListExcel(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		
		BusiVO bVO = new BusiVO();
		bVO.setCom_seq(cvo.getSeq());

		List<BusiVO> blist=(List<BusiVO>)busiService.selectBusiList(bVO);
				
		Map<String , Object> hashMap = new HashMap<String , Object>();
		hashMap.put("blist", blist);

		/*ExcelTemplateUtil excel = new ExcelTemplateUtil();
		excel.makeExcelByTemplate(request, response, hashMap, excel.get_Filename("businessList"), "busi_template.xlsx");*/
	}
	
	
	@RequestMapping(value="/busiDetail.do")
	public ModelAndView busiDetail(HttpServletRequest request, HttpServletResponse response, HttpSession session, @ModelAttribute BusiVO bVO) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		
		bVO.setComSeq(cvo.getSeq());
		
		BusiVO busiVO=busiService.selectBusiDetail(bVO);
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("comMain_busiMng/comBusiDetail");
		model.addObject("busiInfo", busiVO);
		
		return model;
	}
	
	@RequestMapping(value="/busiReg.do")
	public String busiInput(HttpServletRequest request, 
			HttpServletResponse response) {
		return "comMain_busiMng/comBusiReg";
	}
	
	@RequestMapping(value="/busiInsert.do")
	public ModelAndView busiInsert(HttpServletRequest request,HttpServletResponse response, HttpSession session, @ModelAttribute BusiVO bvo) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
//		bvo.setCom_seq(cvo.getSeq());
		bvo.setCom_seq(2);
		int res=busiService.insertBusi(bvo);
		logger.info("사업등록"+res+"개");
		return new ModelAndView("redirect:/busi/busiList.do");
			
	}
	
	@RequestMapping(value="/busiUpdate.do")
	public ModelAndView busiUpdate(HttpServletRequest request,HttpServletResponse response, HttpSession session, @ModelAttribute BusiVO bvo) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		bvo.setCom_seq(cvo.getSeq());
		//bvo.setComSeq(2);
		int res=busiService.updateBusi(bvo);
		logger.info("사업수정"+res+"개");
		return new ModelAndView("redirect:/busi/busiList.do");
			
	}

	@RequestMapping(value="/busiDelete.do")
	public ModelAndView busiDelete(HttpServletRequest request,HttpServletResponse response, HttpSession session, @ModelAttribute BusiVO bvo) {
		int res=busiService.deleteBusi(bvo);
		logger.info("사업삭제"+res+"개");
		return new ModelAndView("redirect:/busi/busiList.do");
			
	}
	
	//List -> Detail 페이지 이동(다른 url호출,redirect가 다른 url로 이동)
	
	@RequestMapping(value="/busiDetailInfo.do")
	public ModelAndView busiDetailInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session, @ModelAttribute BusiVO bVO) {
		ComVO cvo=(ComVO)session.getAttribute("ComImpo");
		
		bVO.setComSeq(cvo.getSeq());
		
		BusiVO busiVO=busiService.selectBusiDetail(bVO);
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("comMain_busiMng/comBusiMod");
		model.addObject("busiVO", busiVO);
		
		return model;
	}
	
	
}
