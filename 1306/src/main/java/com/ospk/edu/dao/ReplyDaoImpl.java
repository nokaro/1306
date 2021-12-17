package com.ospk.edu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ospk.edu.model.MemberVo;
import com.ospk.edu.model.ReplyVo;

@Repository
public class ReplyDaoImpl implements ReplyDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	String nameSpace = "com.ospk.edu.";
	
	@Override
	public List<ReplyVo> selectReply(int pno) throws Exception {
		return sqlSession.selectList(nameSpace + "selectReply", pno);
	}
	
	@Override
	public void insertReply(ReplyVo replyVo) throws Exception {
		sqlSession.insert(nameSpace + "insertReply", replyVo);
	}
	
	@Override
	public void updateReply(ReplyVo replyVo) throws Exception {
		sqlSession.insert(nameSpace + "updateReply", replyVo);
	}
	
	@Override
	public void deleteReply(ReplyVo replyVo) throws Exception {
		sqlSession.insert(nameSpace + "deleteReply", replyVo);
	}
	
}
