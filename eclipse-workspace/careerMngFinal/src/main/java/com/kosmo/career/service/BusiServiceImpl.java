package com.kosmo.career.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.BusiMapper;
import com.kosmo.career.mapper.ServedMapper;
import com.kosmo.career.vo.BusiVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserComServedVO;

@Service
public class BusiServiceImpl implements BusiService{
	
	@Autowired
	BusiMapper busiMapper;
	
	@Override
	public List<BusiVO> selectBusiList(BusiVO param) {
		return busiMapper.selectBusiList(param);
	}

	@Override
	public BusiVO selectBusiDetail(BusiVO param) {
		return busiMapper.selectBusiDetail(param);
	}

	@Override
	public int insertBusi(BusiVO bvo) {
		return busiMapper.insertBusi(bvo);
	}
	
	@Override
	public int updateBusi(BusiVO bvo) {
		return busiMapper.updateBusi(bvo);
	}
	
	@Override
	public int deleteBusi(BusiVO bvo) {
		return busiMapper.deleteBusi(bvo);
	}

	@Override
	public List<BusiVO> searchBusiName(String searchStr) {
		return busiMapper.searchBusiName(searchStr);
	}

	
}
