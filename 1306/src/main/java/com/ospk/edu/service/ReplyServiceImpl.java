package com.ospk.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ospk.edu.dao.MemberDao;
import com.ospk.edu.dao.ReplyDao;
import com.ospk.edu.model.ReplyVo;

/**
 * @author 박지영
 *
 */
@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	public ReplyDao replyDao;
	
	public List<ReplyVo> selectReply(int pno) throws Exception{
		return replyDao.selectReply(pno);
	}
	
	public void insertReply(ReplyVo replyVo) throws Exception{
		replyDao.insertReply(replyVo);
	}
	
	public void updateReply(ReplyVo replyVo) throws Exception{
		replyDao.updateReply(replyVo);
	}
	
	public void deleteReply(ReplyVo replyVo) throws Exception{
		replyDao.deleteReply(replyVo);
	}
	
}
