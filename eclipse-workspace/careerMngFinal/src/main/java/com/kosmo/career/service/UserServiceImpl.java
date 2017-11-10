package com.kosmo.career.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.career.mapper.CertiMapper;
import com.kosmo.career.mapper.UserMapper;
import com.kosmo.career.vo.CertiVO;
import com.kosmo.career.vo.ServedVO;
import com.kosmo.career.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	CertiMapper certiMapper;
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public UserVO login(CertiVO cvo){
		return userMapper.selectUser(cvo.getSeq());
	}

	@Override
	public int insertUser(UserVO vo) {
		System.out.println(certiMapper.insertCerti(vo));
		return userMapper.insertUser(vo);
	}

	@Override
	public boolean dupIdCheck(String id) {
		CertiVO vo=certiMapper.selectId(id);
		boolean flag=true;
		if (vo!=null) {
			flag=false;
		}
		return flag;
	}

	@Override
	public UserVO selectUser(int seq) {
		return userMapper.selectUser(seq);
	}

	@Override
	public int deleteUser(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ServedVO> selectUserNO(List<ServedVO> slist) {
		List<ServedVO> resList = new ArrayList<ServedVO>(); 
		for(ServedVO vo : slist) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("name", vo.getUserName() );
			map.put("userSeq", vo.getUser_seq());
			CertiVO cvo= userMapper.selectChk(map);
			if(cvo!=null) {
				resList.add(vo);
			}
		}
		return resList;
	}
	
}
