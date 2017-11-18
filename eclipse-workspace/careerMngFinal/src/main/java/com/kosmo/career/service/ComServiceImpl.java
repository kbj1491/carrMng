package com.kosmo.career.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.CertiMapper;
import com.kosmo.career.mapper.ComMapper;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ComVO;

@Service
public class ComServiceImpl implements ComService{

	@Autowired
	CertiMapper certiMapper;
	
	@Autowired
	ComMapper comMapper;
	
	@Override
	public ComVO login(CertiVO cvo){
		return comMapper.selectCom(cvo.getSeq());
	}

	@Override
	public int insertCom(ComVO vo) {
		certiMapper.insertCerti(vo);
		return comMapper.insertCom(vo);
	}

	@Override
	public boolean dupIdCheck(String id) {
		CertiVO vo=certiMapper.selectId(id);
		boolean flag=false;
		if (vo!=null) {
			flag=true;
		}
		return flag;
	}

	@Override
	public ComVO selectCom(int seq) {
		return comMapper.selectCom(seq);
	}

	@Override
	public int deleteCom(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCom(ComVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ComVO> searchCom(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
