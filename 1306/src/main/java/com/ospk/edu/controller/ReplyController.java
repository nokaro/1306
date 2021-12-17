package com.ospk.edu.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ospk.edu.model.ReplyVo;
import com.ospk.edu.service.ReplyService;

@Controller
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@Autowired
	private ReplyService replyService;

//	댓글작성
	@RequestMapping(value = "/board/writeReplyCtr.do", method = RequestMethod.POST)
	public String writeReply(int pno, @ModelAttribute ReplyVo replyVo, HttpSession session) throws Exception {
		logger.info("Welcome ReplyController! writeReply" + replyVo);
		replyService.insertReply(replyVo);

//		String s_pno = String.valueOf(pno);
//		String s_pno = pno + "";
		
		String viewUrlStr = "";
		
		viewUrlStr = "redirect:/board/readPost.do?pno=" + pno;
		
		return viewUrlStr;
	}

//	// 댓글 수정
//	@RequestMapping(value = "/board//replyUpdate.do", method = RequestMethod.POST)
//	public String updateReply(int pno, ReplyVo replyVo, HttpSession session) throws Exception {
//		logger.info("Welcome ReplyController! updateReply rno: " + replyVo);		
//		replyService.updateReply(replyVo);
//
//		String s_pno = String.valueOf(pno);
//		return "redirect:/board/readPost.do?pno=" + s_pno;
//	}
	
	//댓글 삭제
	@RequestMapping(value = "/board/replyDelete.do", method = RequestMethod.GET)
    public String deleteReply(int pno, int rno, ReplyVo replyVo, HttpSession session) throws Exception{
		logger.info("Welcome ReplyController! deleteReply rno: " + rno);		
		replyService.deleteReply(replyVo);
	
		String s_pno = String.valueOf(pno);
		return "redirect:/board/readPost.do?pno=" + s_pno;
    }



}
