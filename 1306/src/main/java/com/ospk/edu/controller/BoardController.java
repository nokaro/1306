package com.ospk.edu.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.ospk.edu.model.BoardVo;
import com.ospk.edu.model.MemberVo;
import com.ospk.edu.service.BoardService;
import com.ospk.edu.service.MemberService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	// 게시글 등록 화면으로
	@RequestMapping(value = "/board/writePost.do", method = RequestMethod.GET)
	public String writePost(Model model) {
		logger.info("Welcome MemberController! writePost");

		return "board/writePost";
	}
	
	//게시글 등록
	@RequestMapping(value="/board/writeCtr.do", method=RequestMethod.POST)
	public String writePostCtr(@ModelAttribute BoardVo boardVo, HttpSession session) {
		logger.info("Welcome BoardController! writePost" + boardVo);
		MemberVo memb = ((MemberVo)session.getAttribute("member"));
		
		String writer = memb.getId();
		boardVo.setId(writer);
		boardService.writePost(boardVo);
		return "redirect:/loginCtr2.do";
	}
	
	
	//모든 게시물 보기
	@RequestMapping(value="/board/AllPost.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String AllPost(@ModelAttribute BoardVo boardVo, 
			@RequestParam(defaultValue = "") String keyword2, Model model) {
		
		logger.info("Welcome MemberController! " + "AllPostaList " + "keyword2: {}", keyword2);
		
		HashMap<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("keyword2", keyword2);
		
		List<BoardVo> AllPostList = boardService.readAllPost(keyword2);
		
		model.addAttribute("AllPostList", AllPostList);
		model.addAttribute("searchMap", searchMap);
		   
		
		return "/Main";
	}
	
	 
	//내가 쓴 게시물만 보기
	@RequestMapping(value="/board/MyPost.do", method=RequestMethod.GET)
	public String MyPost(HttpSession session, Model model) {
		
		MemberVo memb = ((MemberVo)session.getAttribute("member"));
		String id = memb.getId();
		logger.info("Welcome BoardController! Mypost: " + id);
		
		List<BoardVo> MyPostList = boardService.selectMyPost(id);
		model.addAttribute("MyPostList", MyPostList);
		
		return "board/MyPost";
	}
		
	//게시글 수정 화면으로
	@RequestMapping(value = "/board/correctPost.do", method = RequestMethod.GET)
	public String correctPost(int pno, Model model) {
		logger.info("Welcome BoardController! Post Update no: " + pno);
		
		BoardVo boardVo = boardService.readPost(pno);
		
		model.addAttribute("boardVo", boardVo);
		
		return "board/correctPost";
	}
	
	//게시글 수정
	@RequestMapping(value = "/board/correctPostCtr.do", method = RequestMethod.POST)
	public String correctPostCtr(HttpSession session, BoardVo boardVo, Model model) {
		logger.info("Welcome MemberController! Correct Post" + boardVo.getPno());

		boardService.correctPost(boardVo);

		if (session.getAttribute("board") != null) {
			BoardVo tempVo = (BoardVo) session.getAttribute("board");
			if (boardVo.getPno() == tempVo.getPno()) {
				session.setAttribute("board", 
						boardService.readPost(boardVo.getPno()));
			}
		}
//		String url = "redirect:/board/readPost.do?pno=" + boardVo.getPno();
		String url = "redirect:/loginCtr2.do#me";
		return url;
	}
	
	//게시글 삭제
	@RequestMapping(value = "/board/deletePost.do", method=RequestMethod.GET)
	public String deletePost(int pno, Model model, HttpSession session) {
		logger.info("Welcome BoardController! deletePost no: " + pno);
		
		boardService.deletePost(pno);
		
		MemberVo memb = ((MemberVo)session.getAttribute("member"));
		String id = memb.getId();
		
//		./loginCtr2.do#all
		
//		String url = "redirect:/board/MyPost.do?id=" + id;
		String url = "redirect:/loginCtr2.do#me";
		
		return url;
	}
	
	//게시글 읽기
	@RequestMapping(value = "/board/readPost.do", method=RequestMethod.GET)
	public String readPost(int pno, Model model) {
		logger.info("Welcome MemberController! read Post no: " + pno);
		
		BoardVo boardVo = boardService.readPost(pno);

		model.addAttribute("boardVo", boardVo);
		
		return "board/readPost";
	}
}
