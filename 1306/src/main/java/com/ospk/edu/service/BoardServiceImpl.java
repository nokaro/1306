package com.ospk.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ospk.edu.dao.BoardDao;
import com.ospk.edu.model.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	public BoardDao boardDao;
	
	@Override
	public int writePost(BoardVo boardVo) {
		// TODO Auto-generated method stub
		return boardDao.writePost(boardVo);
	}

	@Override
	public int correctPost(BoardVo boardVo) {
		// TODO Auto-generated method stub
		return boardDao.correctPost(boardVo);
	}

	@Override
	public void deletePost(int pno) {
		// TODO Auto-generated method stub
		boardDao.deletePost(pno);
	}

	@Override
	public List<BoardVo> selectMyPost(String id) {
		// TODO Auto-generated method stub
		return boardDao.selectMyPost(id);
	}

	@Override
	public BoardVo readPost(int pno) {
		// TODO Auto-generated method stub
		return boardDao.readPost(pno);
	}

}
