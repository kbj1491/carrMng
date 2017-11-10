package com.kosmo.career.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.ServedVO;

@Repository
public interface BusiMapper {
	
	//사업리스트 조회
	List<BusiVO> selectBusiList(BusiVO param);
	
	//사업 자세히 보기
	BusiVO selectBusiDetail(BusiVO param);
	
	//사업 추가
	int insertBusi(BusiVO bvo);

	//사업명 조회 autocomplete
	List<BusiVO> searchBusiName(String searchStr);

	//사업명으로 사업정보 조회 search
	List<BusiVO> selectBusi(String searchStr);
	
	public int updateBusi(BusiVO bvo);
	
	public int deleteBusi(BusiVO bvo);

	BusiVO selectBusiDetail(int busi_seq);
}
