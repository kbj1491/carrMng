package com.kosmo.career.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.career.mapper.CertiMapper;
import com.kosmo.career.mapper.ComMapper;
import com.kosmo.career.mapper.UserMapper;
import com.kosmo.career.vo.CertiVO;

@Service
public class CertiServiceImpl implements CertiService{

	@Autowired
	CertiMapper certiMapper;
	
//	@Autowired
//	UserMapper userMapper;
//	
//	@Autowired
//	ComMapper comMapper;

	@Override
	public CertiVO login(CertiVO vo) {
		return certiMapper.certilogin(vo);
	}
}
