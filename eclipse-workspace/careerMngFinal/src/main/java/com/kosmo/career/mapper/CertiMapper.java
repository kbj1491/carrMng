package com.kosmo.career.mapper;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.CertiVO;

@Repository
public interface CertiMapper {
		
	//조회
	CertiVO selectCertiOne(int seq);
	
	//로그인
	CertiVO certilogin(CertiVO vo);
	
	//인증추가
	int insertCerti(CertiVO vo);

	CertiVO selectId(String id);
	
}
