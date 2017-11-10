package com.kosmo.career.service;

import java.util.List;

import com.kosmo.career.vo.BusiVO;

public interface BusiService {

	//회사측 사업 리스트 조회
	public List<BusiVO> selectBusiList(BusiVO param);
	
	//회사측 사업 디테일 보기
	public BusiVO selectBusiDetail(BusiVO param);
	
	//사업 추가
	public int insertBusi(BusiVO bvo);
	
	//사업 수정
	public int updateBusi(BusiVO bvo);
	
	//사업 삭제
	public int deleteBusi(BusiVO bvo);

	
	public List<BusiVO> searchBusiName(String searchStr);
	
}
