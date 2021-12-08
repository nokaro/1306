package com.ospk.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ospk.edu.dao.MemberDao;
import com.ospk.edu.model.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	public MemberDao memberDao;
	
	@Override
	public MemberVo memberExist(String id, String password) { 
		
		return memberDao.memberExist(id, password);
	}

	@Override
	public int memberInsertOne(MemberVo memberVo) { 
		
		return memberDao.memberInsertOne(memberVo);
	}

	@Override
	public int memberSelectTotalCount(String keyword, String searchOption) {
		return memberDao.memberSelectTotalCount(keyword, searchOption);
	}

	@Override
	public List<MemberVo> memberSelectList(String searchOption
			, String keyword, int start, int end) { 
		
		return memberDao.memberSelectList(searchOption, keyword, start, end);
	}

	@Override
	public void memberDeleteOne(String id) {
		memberDao.memberDeleteOne(id);
	} 
}
