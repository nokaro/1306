package com.ospk.edu.dao;

import java.util.List;

import com.ospk.edu.model.BoardVo;
import com.ospk.edu.model.MemberVo;

public interface MemberDao {
	
	public MemberVo memberExist(String id, String password);
	public int memberInsertOne(MemberVo memberVo); //회원 등록
	public int memberSelectTotalCount(String keyword, String searchOption);
	public List<MemberVo> memberSelectList(String searchOption
			, String keyword, int start, int end); 
	public void memberDeleteOne(String id); //회원 삭제(회원)
	
	public int boardPnoSearch(String id); //회원 삭제(관리자)
	public void memeberDeleteBoard(String id); //회원 삭제(관리자)
	public void memberDeleteOne2(String id); //회원 삭제(관리자)
	public void memberDeleteReply(int pno); //회원 삭제(관리자) 
	
	
	public int memberUpdateOne(MemberVo memberVo); //회원 정보 수정
	public int memberPWUpdateOne(MemberVo memberVo); //회원 비밀번호 변경
	
	public MemberVo memberSelectOne(String no); 
	public MemberVo memberFindID(String name, String email); //아이디 찾기
	public MemberVo memberFindPW(String id, String name); //비밀번호 찾기
	

}
