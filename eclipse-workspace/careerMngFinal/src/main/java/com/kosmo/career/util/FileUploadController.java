package com.kosmo.career.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/uploadController")
public class FileUploadController {

	private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);
	
	@Inject 
	@Qualifier("uploadDirResource")
	private FileSystemResource fsResource;



	@RequestMapping(method = RequestMethod.GET)
	public String uploadJspForm(Model model)
	{
		model.addAttribute(new FileVO());
		return "upload/uploadForm";
	}

	//	  public String create(FileVO FileVO, BindingResult result)
	//	  {
	//	    if (result.hasErrors())
	//	    {
	//	      for(ObjectError error : result.getAllErrors())
	//	      {
	//	        System.err.println("Error: " + error.getCode() +  " - " + error.getDefaultMessage());
	//	      }
	//	      return "upload/uploadForm";
	//	    }
	@RequestMapping(method = RequestMethod.POST)
	public String uploadFile(FileVO FileVO)  {
		CommonsMultipartFile mFile = FileVO.getmFile();
		
		if(!mFile.isEmpty()){
			String filename = mFile.getOriginalFilename();
			String imgExt = filename.substring(filename.lastIndexOf(".")+1, filename.length());

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
		System.err.println("Test upload: " + FileVO.getName());
		System.err.println("Test upload: " + mFile.getOriginalFilename());
		System.err.println("-------------------------------------------");

		return "redirect:/upload/upload_form.jsp";
	}




}
