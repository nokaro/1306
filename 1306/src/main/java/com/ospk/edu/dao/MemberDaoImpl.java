package com.ospk.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ospk.edu.controller.MemberController;
import com.ospk.edu.model.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	SqlSessionTemplate sqlSession;

	String nameSpace = "com.ospk.edu.";

	@Override
	public MemberVo memberExist(String id, String password) {
		// logger.info("Welcome MemberDaoImpl! " + id + ", " + password);

		HashMap<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("id", id);
		paramMap.put("password", password);

		return sqlSession.selectOne(nameSpace + "memberExist", paramMap);
	}

	@Override
	public int memberInsertOne(MemberVo memberVo) {
		return sqlSession.insert(nameSpace + "memberInsertOne", memberVo);
	}

	@Override
	public int memberSelectTotalCount(String keyword, String searchOption) {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("keyword", keyword);
		paramMap.put("searchOption", searchOption);

		return sqlSession.selectOne(nameSpace + "memberSelectTotalCount", paramMap);
	}

	@Override
	public List<MemberVo> memberSelectList(String searchOption, String keyword, int start, int end) {
		Map<String, Object> map = new HashMap<>();

		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);

		return sqlSession.selectList(nameSpace + "memberSelectList", map);
	}

	@Override
	public void memberDeleteOne(String id) {
		sqlSession.delete(nameSpace + "memberDeleteOne", id);
	}

	
	@Override
	public int boardPnoSearch(String id) {
		return sqlSession.delete(nameSpace + "boardPnoSearch", id); 
	} 
	@Override
	public void memeberDeleteBoard(String id) {
		sqlSession.delete(nameSpace + "memeberDeleteBoard", id); 
	} 
	@Override
	public void memberDeleteReply(int id) {
		sqlSession.delete(nameSpace + "memberDeleteReply", id); 
	}

	@Override
	public void memberDeleteOne2(String id) {
		sqlSession.delete(nameSpace + "memberDeleteOne2", id); 
	}
	
	@Override
	public int memberUpdateOne(MemberVo memberVo) {
		return sqlSession.update(nameSpace + "memberUpdateOne", memberVo);
	}

	@Override
	public MemberVo memberSelectOne(String id) {
		return sqlSession.selectOne(nameSpace + "memberSelectOne", id);
	}
 
	@Override
	public MemberVo memberFindID(String name, String email) {
		logger.info("Welcome DAOIMPL memberFindID! name: " + name + ", email: " + email);

		HashMap<String, Object> paramMap = new HashMap<String, Object>();
 
		paramMap.put("name", name);
		paramMap.put("email", email);

		return sqlSession.selectOne(nameSpace + "memberFindID", paramMap);
	}

	@Override
	public MemberVo memberFindPW(String id, String name) {
		logger.info("Welcome DAOIMPL memberFindPW! id: " + id + ", name: " + name);

		HashMap<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("id", id);
		paramMap.put("name", name); 

		return sqlSession.selectOne(nameSpace + "memberFindPW", paramMap);
	}

	@Override
	public int memberPWUpdateOne(MemberVo memberVo) {
		return sqlSession.update(nameSpace + "memberPWUpdateOne", memberVo);
	}

	

}
