package com.ospk.edu.dao;

import java.util.List;

import com.ospk.edu.model.BoardVo;

public interface BoardDao {
	//게시글 작성
	public int writePost(BoardVo boardVo);
	
	//게시글 수정
	public int correctPost(BoardVo boardVo);
	
	//게시글 삭제
	public void deletePost(int pno);
	
	//내 게시글 보기
	public List<BoardVo> selectMyPost(String id);
	
	//게시글 선택
	public BoardVo readPost(int pno);
}
