package com.kosmo.career.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.BusiMapper;
import com.kosmo.career.mapper.CarrMapper;
import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.CarrVO;

@Service
public class CarrServiceImpl implements CarrService{
	
	@Autowired
	CarrMapper carrMapper;

	@Autowired
	BusiMapper busiMapper;
	
	@Override
	public int comCarrInsert(CarrVO cvo) {
		int res=0;
		for(CarrVO cvo2:cvo.getCarrList()) {
			cvo2.setBusi_seq(cvo.getBusi_seq());
			res+=carrMapper.insertUserCarr(cvo2);
		}
		return res;
	}

	@Override
	public List<CarrVO> userCarrList(int useq) {
		return carrMapper.selectUserCarr(useq);
	}

	@Override
	public CarrVO userCarrDetail(int carr_seq) {
		return carrMapper.selectCarr(carr_seq);
	}

	@Override
	public List<CarrVO> userCarrPreview(int user_seq) {
		return carrMapper.selectUserCarr(user_seq);
	}

	@Override
	public List<CarrVO> userCarrReqList(int cseq) {
		return carrMapper.selectUserReqList(cseq);
	}

	@Override
	public Map<String,Object> carrReqDetail(int carr_seq) {
		CarrVO cvo=carrMapper.selectUserReqDetail(carr_seq);
		BusiVO bvo=busiMapper.selectBusiDetail(cvo.getBusi_seq());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("carrVO", cvo);
		map.put("busiVO", bvo);
		return map;
	}

	@Override
	public Map<String, Object> carrReqList(int useq) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comReq", carrMapper.selectNotAgreeUserList(useq));
		map.put("userReq", carrMapper.selectNotAgreeComList(useq));
		return map;
	}

	@Override
	public int userCarrInsert(CarrVO carrVO) {
		return carrMapper.insertCarr(carrVO);
	}

	@Override
	public List<CarrVO> comCarrList(int cseq) {
		return carrMapper.selectCarrList(cseq);
	}

	@Override
	public Map<String, Object> carrComDetail(String carrRegDate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("carrVO", carrMapper.selectCarrDetail(carrRegDate));
		map.put("carrUserList", carrMapper.selectCarrUserList(carrRegDate));
		return map;
	}

	@Override
	public List<CarrVO> searchBusiName(String searchStr) {
		return carrMapper.comAutoComplete(searchStr);
	}

	@Override
	public List<CarrVO> selectNotAgreeUserList(int useq) {
		return carrMapper.selectNotAgreeUserList(useq);
	}

	@Override
	public List<CarrVO> selectNotAgreeComList(int useq) {
		return carrMapper.selectNotAgreeComList(useq);
	}

	@Override
	public List<CarrVO> comSearch(String comName) {
		return carrMapper.comSearch(comName);
	}

	@Override
	public int carrComAgre(List<Integer> cList) {
		int res = 0;
		for(int i : cList){
			res += carrMapper.carrComAgre(i);
		}
		return res;
	}
	@Override
	public int carrUserAgre(List<Integer> cList) {
		int res = 0;
		for(int i : cList){
			res += carrMapper.carrUserAgre(i);
		}
		return res;
	}

	@Override
	public int carrUserAgreOne(int carr_seq) {
		return carrMapper.carrUserAgreOne(carr_seq);
	}
	
	
}
