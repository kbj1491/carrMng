package com.kosmo.career.mapper;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.ComVO;

@Repository
public interface ComMapper {

	// 회원가입
	int insertCom(ComVO vo);

	// 아이디 중복체크
	boolean dupIdCheck(String id);

	// 유저 정보조히
	ComVO selectCom(int seq);

	// 유저 삭제
	int deleteCom(int seq);

	// 유저 업데이트
	int updateCom(ComVO vo);

}
