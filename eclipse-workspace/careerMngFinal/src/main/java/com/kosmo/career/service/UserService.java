package com.kosmo.career.service;

import java.util.List;

import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserVO;

public interface UserService {
	
	//로그인
	public UserVO login(CertiVO vo);
	
	//회원가입
	public int insertUser(UserVO vo);
	
	//아이디 중복체크
	public boolean dupIdCheck(String id);
	
	//아이디와 이름으로 회원조회
	public List<ServedVO>  selectUserNO(List<ServedVO> slist);
	
	//유저 정보조히
	public UserVO selectUser(int seq);
	
	//유저 삭제
	public int deleteUser(int seq);
	//유저 업데이트
	public int updateUser(UserVO vo);
	
	
}
