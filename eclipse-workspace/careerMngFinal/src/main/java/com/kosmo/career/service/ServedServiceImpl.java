package com.kosmo.career.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.ServedMapper;
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
	public List<ServedVO> selectUserReqList(int cseq) {
		return servedMapper.servedUserReqList(cseq);
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

	
	
}
