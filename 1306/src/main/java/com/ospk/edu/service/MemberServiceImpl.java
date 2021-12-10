package com.ospk.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ospk.edu.dao.MemberDao;
import com.ospk.edu.model.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {

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
	public List<MemberVo> memberSelectList(String searchOption, String keyword, int start, int end) { 
		return memberDao.memberSelectList(searchOption, keyword, start, end);
	}

	@Override
	public void memberDeleteOne(String id) {
		memberDao.memberDeleteOne(id);
	}

	@Override
	public int memberUpdateOne(MemberVo memberVo) {
		return memberDao.memberUpdateOne(memberVo);
	}

	@Override
	public MemberVo memberSelectOne(String id) {

		MemberVo memberVo = memberDao.memberSelectOne(id);

		int length = memberVo.getPassword().length();

		String pwd = "";
		for (int i = 0; i < length; i++) {
			pwd += "*";
		}

		memberVo.setPassword(pwd);

		return memberVo;
	}

	@Override
	public MemberVo memberFindID(String name, String email) { //아이디 찾기
		return memberDao.memberFindID(name, email);
	}

	@Override
	public MemberVo memberFindPW(String id, String name) { //비밀번호 찾기
		return memberDao.memberFindPW(id, name);
	}

	@Override 
	public int memberPWUpdateOne(MemberVo memberVo) { //회원 비밀번호 변경 
		return memberDao.memberPWUpdateOne(memberVo);
	}

}
