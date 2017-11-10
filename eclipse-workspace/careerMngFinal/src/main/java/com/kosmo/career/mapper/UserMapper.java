package com.kosmo.career.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.UserVO;

@Repository
public interface UserMapper {
		
		//회원가입
		int insertUser(UserVO vo);
		
		//아이디 중복체크
		boolean dupIdCheck(String id);
		
		//유저 정보조히
		UserVO selectUser(int seq);
		
		//아이디와 등록번호로 체크
		CertiVO selectChk(Map<String, Object> map);
		
		//유저 삭제
		int deleteUser(int seq);
		
		//유저 업데이트
		int updateUser(UserVO vo);

}
