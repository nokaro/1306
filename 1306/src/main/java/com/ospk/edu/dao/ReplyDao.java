package com.ospk.edu.dao;

import java.util.List;

import com.ospk.edu.model.ReplyVo;


public interface ReplyDao {
	
	public List<ReplyVo> selectReply(int pno) throws Exception;
	public void insertReply(ReplyVo replyVo) throws Exception;
	public void updateReply(ReplyVo replyVo) throws Exception;
	public void deleteReply(ReplyVo replyVo) throws Exception;

}
