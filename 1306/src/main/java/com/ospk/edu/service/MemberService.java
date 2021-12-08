package com.ospk.edu.service;

import java.util.List;

import com.ospk.edu.model.MemberVo;

public interface MemberService {
	public MemberVo memberExist(String id, String password);
	public int memberInsertOne(MemberVo memberVo);
	public int memberSelectTotalCount(String keyword, String searchOption);
	public List<MemberVo> memberSelectList(String searchOption
			, String keyword, int start, int end);
	public void memberDeleteOne(String id);
}
