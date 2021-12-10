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

	// 로그인 버튼 클릭시
	@RequestMapping(value = "/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String id, String password, HttpSession session, Model model) {
		logger.info("Welcome MemberController! loginCtr! " + id + ", " + password);

		MemberVo memberVo = memberService.memberExist(id, password);

		if (memberVo != null && id.equals("관리자") && password.equals("1234")) {
			// 관리자 라면
			session.setAttribute("member", memberVo);

			return "redirect:/auth/list.do";

		} else if (memberVo != null) { // 관리자가 아니라면

			session.setAttribute("member", memberVo);

			return "/Main";

		} else {
//			return "redirect:/loginCtr2.do";
			return "/auth/LoginFail";
		}
	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		logger.info("Welcome MemberController! logout");

		session.invalidate(); // 세션 삭제

		return "../../Login";
	}

	// 회원목록 화면으로
	@RequestMapping(value = "/auth/list.do", method = { RequestMethod.GET, RequestMethod.POST })
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

		return "auth/MemberListView";
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
			return "../../Login";
		} else {
			return "../../Login";
		}
	}

	// 회원수정 화면으로
	@RequestMapping(value = "/member/update.do", method = RequestMethod.GET)
	public String memberUpdate(String id, Model model) {
		logger.info("Welcome MemberController! memberUpdate id: " + id);

		MemberVo memberVo = memberService.memberSelectOne(id);

		model.addAttribute("member", memberVo);

		return "member/MemberUpdateForm";
	}

	// 회원수정 버튼 클릭 시
	@RequestMapping(value = "/member/updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(MemberVo memberVo, Model model, HttpSession session) {
		logger.info("Welcome MemberController! memberUpdateCtr " + memberVo);

		memberService.memberUpdateOne(memberVo);

		if (session.getAttribute("member") == null) {
			session.setAttribute("member", memberVo);
		}
		model.addAttribute("member", memberVo);

		return "redirect:/loginCtr2.do";
	}

	// 로그인 버튼 클릭시
	@RequestMapping(value = "/loginCtr2.do", method = RequestMethod.GET)
	public String loginCtr2(String id, String password, HttpSession session, Model model) {

		return "/Main";
	}

	// 회원탈퇴
	@RequestMapping(value = "/auth/deleteCtr.do", method = RequestMethod.GET)
	public String memberDeleteCtr(String id, Model model) {
		logger.info("Welcome MemberController! " + "memberDeleteCtr id: " + id);

		memberService.memberDeleteOne(id);

		return "redirect:/auth/list.do";
	}

	// 아이디/비밀번호 찾기 화면으로
	@RequestMapping(value = "/member/findidpw.do", method = RequestMethod.GET)
	public String memberFindIDPW(Model model) {
		logger.info("Welcome MemberController! memberFindIDPW");

		return "member/FindIDPASS";
	}

	// 아이디/비밀번호 찾기 버튼 클릭 시
	@RequestMapping(value = "/member/findidpwCtr.do", method = RequestMethod.POST)
	public String memberFindIDPWCtr(String id, String name, String email, Model model, HttpSession session) {
		logger.info("Welcome MemberController! memberFindIDPWCtr id: " + id + ", email: " + email + ", name: " + name);

		if (id == null) {
			MemberVo memberVo = memberService.memberFindID(name, email);

			if (memberVo != null) { // 입력한 정보가 있다면
				session.setAttribute("member", memberVo);
				model.addAttribute("member", memberVo);

				return "member/FindID";
			} else {

				return "/auth/LoginFail";
			}

		} else if (email == null) { //비밀번호를 찾을 경우
			MemberVo memberVo = memberService.memberFindPW(id, name);

			if (memberVo != null) { // 입력한 정보가 있다면
				session.setAttribute("member", memberVo);

				return "member/FindPW";
			} else {

				return "/auth/LoginFail";
			}

		}
		return id;
	}

	// 회원 비밀번호 수정 버튼 클릭 시
	@RequestMapping(value = "/member/updatePWCtr.do", method = RequestMethod.POST)
	public String updatePWCtr(MemberVo memberVo, Model model, HttpSession session) {
		logger.info("Welcome MemberController! memberUpdateCtr " + memberVo);

		memberService.memberPWUpdateOne(memberVo);

		if (session.getAttribute("member") == null) {
			session.setAttribute("member", memberVo);
		}
		model.addAttribute("member", memberVo);

		return "../../Login";
	}
}
