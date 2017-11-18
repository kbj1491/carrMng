package com.kosmo.career.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.ServedMapper;
import com.kosmo.career.vo.CarrVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserComServedVO;

@Service
public class ServedServiceImpl implements ServedService{

	@Autowired
	ServedMapper servedMapper;
	
	@Override
	public ServedVO selectUser(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ServedVO> selectUserList(int cseq) {
		return servedMapper.servedUserList(cseq);
	}
	
	@Override
	public int insertUserList(ServedVO svo) {
		return servedMapper.servedUserInsert(svo);
	}

	@Override
	public List<ServedVO> selectComList(int useq) {
		return servedMapper.servedComList(useq);
	}

	@Override
	public ServedVO selectCom(int cseq) {
		return servedMapper.servedCom(cseq);
	}

	@Override
	public Boolean servedUserUpdate(ServedVO svo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertCom(ServedVO svo) {
		return servedMapper.servedComInsert(svo);
	}

	@Override
	public int comAgre(int cseq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Map<String, Object> selectUserReqList(int cseq) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comReq", servedMapper.servedComSelfReqList(cseq));
		map.put("userReq", servedMapper.servedComUserReqList(cseq));
		return map;
	}

	@Override
	public ServedVO selectUserReq(int served_seq) {
		return servedMapper.servedUserReq(served_seq);
	}

	@Override
	public List<ServedVO> selectComReqList(int useq) {
		return servedMapper.servedComReqList(useq);
	}
	
	@Override
	public Map<String, Object> selectReqList(int useq) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comReq", servedMapper.servedComReqList(useq));
		map.put("userReq", servedMapper.servedUserComReqList(useq));
		return map;
	}

	@Override
	public ServedVO selectComReqDetail(int servedSeq) {
		return servedMapper.servedComReqDetail(servedSeq);
	}

	@Override
	public Boolean certiUser(String name, int seq) {
		String name2=(String)servedMapper.servedCertiUser(seq);
		return name.equals(name2);
	}

	@Override
	public List<ServedVO> selectNotComList(int user_seq) {
		return servedMapper.servedNotComList(user_seq);
	}

	@Override
	public int agreServedCom(List<Integer> sevedList) {
		int res=0;
		for(int served_seq : sevedList){
			res+=servedMapper.agreServedCom(served_seq);
		}
		return res;
	}

	@Override
	public int agreServedUser(List<Integer> sevedList) {
		int res=0;
		for(int served_seq : sevedList){
			res+=servedMapper.agreServedUser(served_seq);
		}
		return res;
	}

	@Override
	public List<ServedVO> selectComName(String comName, int user_seq) {
		ServedVO svo = new ServedVO();
		svo.setComName(comName);
		svo.setUser_seq(user_seq);
		return servedMapper.selectComName(svo);
	}

	
	
}
