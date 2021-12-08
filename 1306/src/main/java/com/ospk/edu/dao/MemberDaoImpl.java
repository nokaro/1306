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
		//logger.info("Welcome MemberDaoImpl! " + id + ", " + password);
 
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
	public List<MemberVo> memberSelectList(String searchOption
			, String keyword, int start, int end) {  
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
	 
}
