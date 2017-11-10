package com.kosmo.career.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.CarrVO;
import com.kosmo.career.vo.ServedVO;

@Repository
public interface CarrMapper {
	
	//개인 경력 추가
	int insertUserCarr(CarrVO cvo);
	
	//개인 경력 리스트 조회
	List<CarrVO> selectUserCarr(int useq);
	
	//개인 경력 세부정보 조회
	CarrVO selectCarr(int carr_seq);
	
	//회사측 유저 경력 요청 리스트 조회
	List<CarrVO> selectUserReqList(int cseq);

	//회사측 유저 경력 디테일 조회
	CarrVO selectUserReqDetail(int carr_seq);

	//사용자측 사용자 미승인 리스트 조회
	List<CarrVO> selectNotAgreeUserList(int useq);

	//회사측 회사 미승인 리스트 조회
	List<CarrVO> selectNotAgreeComList(int useq);

	//유저측 경력 추가
	int insertCarr(CarrVO carrVO);
	
	//회사측 경력 리스트 출력
	List<CarrVO> selectCarrList(int cseq);
	
	//해당 날짜로 경력 디테일 조회
	CarrVO selectCarrDetail(String carrRegDate);

	//
	List<CarrVO> selectCarrUserList(String carrRegDate);
	
	
}
