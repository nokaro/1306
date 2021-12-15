package com.ospk.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ospk.edu.model.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String nameSpace = "com.ospk.edu.";
	
	@Override
	public int writePost(BoardVo boardVo) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + "writePostCtr", boardVo);
	}

	@Override
	public int correctPost(BoardVo boardVo) {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + "correctPost", boardVo);
	}

	@Override
	public void deletePost(int pno) {
		// TODO Auto-generated method stub
		sqlSession.delete(nameSpace + "deletePost", pno);
	}

	@Override
	public List<BoardVo> selectMyPost(String id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		return sqlSession.selectList(nameSpace + "selectMyPost", map);
	}

	@Override
	public BoardVo readPost(int pno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + "readPost", pno);
	}
	
}
