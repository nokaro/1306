package com.ospk.edu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ospk.edu.model.ReplyVo;
import com.ospk.edu.service.BoardService;
import com.ospk.edu.service.ReplyService;

/**
 * @author 박지영
 *
 */
@Controller
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@Autowired
	private BoardService boardService;
	@Autowired
	private ReplyService replyService;
	
	//댓글 조회
	@RequestMapping(value = "board/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("pno") int pno) throws Exception {

		//model.addAttribute("boardContent", boardService.readAllPost(pno));
		model.addAttribute("replyVo", new ReplyVo());

		return "board/readPost";

	}


//	댓글작성
	@RequestMapping(value = "/board/writeReplyCtr.do", method = RequestMethod.POST)
	public String writeReply(int pno, @ModelAttribute ReplyVo replyVo, HttpSession session) throws Exception {
		logger.info("Welcome ReplyController! writeReply" + replyVo);
		replyService.insertReply(replyVo);

		String viewUrlStr = "redirect:/board/readPost.do?pno=" + pno;
		
		return viewUrlStr;
	}

	// 댓글 수정
	@RequestMapping(value = "/board/replyUpdate.do", method = RequestMethod.GET)
	public String updateReply(int pno, ReplyVo replyVo, HttpSession session) throws Exception {
		logger.info("Welcome ReplyController! updateReply rno: " + replyVo);		
		replyService.updateReply(replyVo);

		String viewUrlStr = "redirect:/board/readPost.do?pno=" + pno;
		return viewUrlStr;
	}
	
	//댓글 삭제
	@RequestMapping(value = "/board/replyDelete.do", method = RequestMethod.GET)
    public String deleteReply(int pno, int rno, ReplyVo replyVo, HttpSession session) throws Exception{
		logger.info("Welcome ReplyController! deleteReply rno: " + rno);		
		//replyService.deleteReply(replyVo);
		String viewUrlStr = "redirect:/board/readPost.do?pno=" + pno;
		
		return viewUrlStr;
    }
	



}
