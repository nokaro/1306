package com.ospk.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ospk.edu.model.MemberVo;
import com.ospk.edu.service.MemberService;
import com.ospk.util.Paging;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

	// 로그인 화면으로
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		logger.info("Welcome MemberController! login");
 
		return "auth/LoginForm";
	}

	// 로그인 버튼 클릭시
	@RequestMapping(value = "/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String id, String password, HttpSession session, Model model) {
		logger.info("Welcome MemberController! loginCtr! " + id + ", " + password);
		 
		MemberVo memberVo = memberService.memberExist(id, password);
		 
		if (memberVo != null && memberVo.getId().equals("관리자")) {
			// 관리자 라면
			session.setAttribute("member", memberVo);

			return "redirect:/member/list.do";
			
		} else if(memberVo != null) {
			
			return "/member/Main";
			
		} else { 
			
			return "/auth/LoginFail";
		}
	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		logger.info("Welcome MemberController! logout");

		session.invalidate();

		return "redirect:/login.do";
	}

	// 회원목록 화면으로
	@RequestMapping(value = "/member/list.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "all") String searchOption, @RequestParam(defaultValue = "") String keyword,
			Model model) {
		logger.info("Welcome MemberController! " + "memberList " + "keyword: {}, searchOption: {}", keyword,
				searchOption);

		// db컬럼명과 화면단에서의 키워드가 불일치해서 번거롭지만 매칭시켜줌
		if (searchOption.equals("name")) {
			searchOption = "MNAME";
		}

		int totalCount = memberService.memberSelectTotalCount(keyword, searchOption);

		
		// 페이지 나누기 관련 처리
		Paging memberPaging = new Paging(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();

		List<MemberVo> memberList = memberService.memberSelectList(searchOption, keyword, start, end);

		// db컬럼명과 화면단에서의 키워드가 불일치해서 번거롭지만 매칭시켜줌
		if (searchOption.equals("MNAME")) {
			searchOption = "name";
		}

		HashMap<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);

		Map<String, Object> pagingMap = new HashMap<String, Object>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);

		model.addAttribute("memberList", memberList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pagingMap", pagingMap);

		return "member/MemberListView";
	}

	// 회원추가 화면으로
	@RequestMapping(value = "/member/add.do", method = RequestMethod.GET)
	public String memberAdd(Model model) {
		logger.info("Welcome MemberController! memberAdd");

		return "member/MemberForm";
	}

	// 회원등록
	@RequestMapping(value = "/member/addCtr.do", method = RequestMethod.POST)
	public String memberAdd(MemberVo memberVo, Model model, HttpSession session) {
		logger.info("Welcome MemberController! memberAdd " + memberVo);

		memberService.memberInsertOne(memberVo);

		if (session.getAttribute("member") == null) {
			return "redirect:/login.do";
		} else {
			return "redirect:/member/list.do";
		}
	}
	
	// 회원탈퇴
		@RequestMapping(value = "/member/deleteCtr.do", method = RequestMethod.GET)
		public String memberDeleteCtr(String id, Model model) {
			logger.info("Welcome MemberController! " + "memberDeleteCtr id: " + id);

			memberService.memberDeleteOne(id);

			return "redirect:/member/list.do";
		}
}
