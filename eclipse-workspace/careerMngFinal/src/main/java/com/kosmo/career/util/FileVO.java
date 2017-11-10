package com.kosmo.career.util;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class FileVO {
	private String name;
	private CommonsMultipartFile mFile;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public CommonsMultipartFile getmFile() {
		return mFile;
	}
	public void setmFile(CommonsMultipartFile mFile) {
		this.mFile = mFile;
	}

	
}
