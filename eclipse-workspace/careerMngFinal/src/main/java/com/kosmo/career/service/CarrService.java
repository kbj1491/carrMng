package com.kosmo.career.service;

import java.util.List;
import java.util.Map;

import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.CarrVO;

public interface CarrService {

	//회사측에서 개인 경력 추가
	public int comCarrInsert(CarrVO cvo);
	
	//유저측 경력 리스트 조회
	public List<CarrVO> userCarrList(int useq);
	
	//유저측 경력 세부정보 보기
	public CarrVO userCarrDetail(int carr_seq);
	
	//경력 미리보기 리스트 출력
	public List<CarrVO> userCarrPreview(List<Integer> carr_seq);

	//회사측 유저 요청 리스트 출력
	public List<CarrVO> userCarrReqList(int cseq);

	//회사측 유저 경력 요청 디테일 보기
	public Map<String, Object> carrReqDetail(int carr_seq);

	//유저측 요청 리스트 조회
	public Map<String, Object> carrReqList(int useq);

	//유저측 경력 추가
	public int userCarrInsert(CarrVO carrVO);

	//회사측 경력리스트 출력
	public List<CarrVO> comCarrList(int cseq);

	public Map<String, Object> carrComDetail(String carrRegDate);

	//사업명으로 사업 검색
	public List<BusiVO> searchBusiName(String searchStr);
	
	//안드로이드
	public List<CarrVO> selectNotAgreeUserList(int useq);
	
	public List<CarrVO> selectNotAgreeComList(int useq);
	
	
}
