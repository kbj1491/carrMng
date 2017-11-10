package com.kosmo.career.service;

import java.util.List;
import java.util.Map;

import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserComServedVO;

public interface ServedService {

	//유저 시퀀스 재직 조회
	public ServedVO selectUser(int seq);
	
//	//이름으로 검색
//	public List<ServedVO> selectUserList(String name);
//	
	//회사번호로 전체 사원 조회
	public List<ServedVO> selectUserList(int cseq);
	
	//사원번호로 전체 재직 리스트 조회
	public List<ServedVO> selectComList(int user);
	
	//사원 추가
	public int insertUserList(ServedVO svo);
	
	//회사정보, 사원정보 같이 공개;
	public ServedVO selectCom(int cseq);
	
	//회사측 유저 요청리스트 조회
	public List<ServedVO> selectUserReqList(int cseq);
	
	//회사측 츄저 요청 세부정보 조회
	public ServedVO selectUserReq(int served_seq);
	
	
	
	//유저 정보 수정
	public Boolean servedUserUpdate(ServedVO svo);
	
	//회사 정보 추가
	public int insertCom(ServedVO svo);
	
	//개인이 단체 승인할 경우
	public int comAgre(int cseq);

	//사원번호로 요청 회사 조회
	public List<ServedVO> selectComReqList(int useq);

	//사원측 요청 회사 디테일 조회
	public ServedVO selectComReqDetail(int seq);
    
	
	
	//사원번호로 회사요청상태, 내가 요청한상태 두가지 조회
	public Map<String, Object> selectReqList(int useq);

	//인증
	public Boolean certiUser(String name, int seq);
	
	
}
