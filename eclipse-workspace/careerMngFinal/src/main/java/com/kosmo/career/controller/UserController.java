package com.kosmo.career.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.career.service.UserService;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private String uploadDir = "C:/Users/kim bo sung/eclipse-workspace/careerMngFinal/src/main/webapp/uploads";
	@Autowired
	UserService userService;
	
	@Inject
	@Qualifier("uploadDirResource")
	private FileSystemResource fsResource;
	
	@RequestMapping(value = "/userInsert.do")
	public ModelAndView userInsert(
			HttpServletRequest request, 
			HttpServletResponse response, 
			@ModelAttribute UserVO vo) throws IllegalStateException, IOException {
		
		String orgFileName = vo.getUploadFile().getOriginalFilename();
		System.out.println("orgFileName: " + orgFileName);
		if(!(orgFileName.equals("") || orgFileName==null)){
			vo.setProfile_img_orig(orgFileName);
			File file = new File(uploadDir, orgFileName);
			vo.getUploadFile().transferTo(file);
		}
		/*
		if(!mFile.isEmpty()){
			String filename = mFile.getOriginalFilename();
			String imgExt = filename.substring(filename.lastIndexOf(".")+1, filename.length());
			vo.setProfile_img_orig(imgExt);
			vo.setProfile_img_sys(filename);
			//upload 가능한 파일 타입 지정
			//if(imgExt.equalsIgnoreCase("JPG") || imgExt.equalsIgnoreCase("JPEG") || imgExt.equalsIgnoreCase("GIF")){
				byte[] bytes = mFile.getBytes();
				try{
					File lOutFile = new File(fsResource.getPath()+"_"+filename);
					FileOutputStream lFileOutputStream = new FileOutputStream(lOutFile);
					lFileOutputStream.write(bytes);
					lFileOutputStream.close();
				}catch(IOException ie){
					System.err.println("File writing error! ");
				}
				System.err.println("File upload success! ");
			//}else{
			//	System.err.println("File type error! ");
			//}
		}
		System.err.println("-------------------------------------------");
		System.err.println("Test upload: " + mFile.getOriginalFilename());
		System.err.println("-------------------------------------------");
		*/
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
