package com.kosmo.career.service;

import java.util.List;

import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ComVO;

public interface ComService {

	//로그인
	public ComVO login(CertiVO vo);
	
	//회원가입
	public int insertCom(ComVO vo);
	
	//아이디 중복체크
	public boolean dupIdCheck(String id);
	
	//단체 정보조히
	public ComVO selectCom(int seq);
	
	//단체 삭제
	public int deleteCom(int seq);
	
	//단체 업데이트
	public int updateCom(ComVO vo);
	
	//단체 이름으로 검색
	public List<ComVO> searchCom(String name);
	
	
}
