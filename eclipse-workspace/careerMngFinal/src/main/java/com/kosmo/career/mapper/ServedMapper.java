package com.kosmo.career.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.ServedVO;

@Repository
public interface ServedMapper {
	
	//회사로 사원 조회
	List<ServedVO> servedUserList(int cseq);
	
	//사원 추가 
	int servedUserInsert(ServedVO svo);
	
	//사원으로 재직회사 리스트조회
	List<ServedVO> servedComList(int useq);
	
	//재직 회사 조회
	ServedVO servedCom(int cseq);
	
	//재직 회사 추가
	int servedComInsert(ServedVO svo);
	
	//유저 요청 리스트 조회
	List<ServedVO> servedComUserReqList(int cseq);
	
	//유저 요청 리스트 조회
	List<ServedVO> servedComSelfReqList(int cseq);
		
	//유저 요청 세부정보 조회
	ServedVO servedUserReq(int served_seq);

	//사원측 사원번호로 요청 회사리스트 조회
	List<ServedVO> servedComReqList(int useq);
	//사원측 회사미승인리스트
	List<ServedVO> servedUserComReqList(int useq);

	
	//사원측 요청 회사 디테일
	ServedVO servedComReqDetail(int servedSeq);

	//시퀀스로 사용자 조회
	String servedCertiUser(int seq);

	List<ServedVO> servedNotComList(int user_seq);

	int agreServedCom(int served_seq);

	int agreServedUser(int served_seq);

	List<ServedVO> selectComName(ServedVO svo);
}
