package org.lhr.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.lhr.DTO.BoardAttachDTO;
import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJboardDTO;
import org.lhr.DTO.PJmemberDTO;
import org.lhr.DTO.PageDTO;
import org.lhr.service.PJboardService;
import org.lhr.service.PJmemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/project")
public class PJController {
	private static final Logger Logger = LoggerFactory.getLogger(PJController.class);

	@Autowired
	PJmemberService mservice;
	@Autowired
	PJboardService bservice;

	
	// 홈
	@GetMapping("/home")
	public void pjhome() {

	}

	// 소개
	@GetMapping("/intro")
	public void pjintro() {

	}

	// 기부
	@GetMapping("/donation")
	public void pjdonation() {

	}

	// 회원가입
	@GetMapping("/register")
	public void pjregister2() {

	}

	@PostMapping("/register")
	public String pjregister(PJmemberDTO mdto) {
		mservice.memberinsert(mdto);
		return "/project/registerok";
	}

	@GetMapping("/registerok")
	public void pjregisterok() {

	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void memberlogin() {
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(PJmemberDTO mdto, RedirectAttributes rttr, HttpSession session) {

		PJmemberDTO result = mservice.login(mdto);

		if (result == null) {
			rttr.addFlashAttribute("check", "fail");
			return "redirect:/project/login";
		} else {
			session.setAttribute("id", result.getId());
			return "redirect:/project/home";
		}
	}

	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/project/login";
	}

	// 회원정보확인
	@GetMapping("/memberdetail")
	public void boarddetail(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		model.addAttribute("detail", mservice.memberdetail(id));

	}

	// 회원정보수정
	@GetMapping("/memberupdate")
	public void memberupdate(PJmemberDTO mdto) {
		mservice.memberupdate(mdto);
	}

	// 회원 탈퇴
	@GetMapping("/memberdelete")
	public void memberdelete(PJmemberDTO mdto, HttpSession session) {
		mservice.memberdelete(mdto);
		session.invalidate();
	}

	// 전체 회원 목록
	@GetMapping("/memberlist")
	public void pjmemberlist(Criteria cri, Model model) {
		int total = mservice.getTotal();
		Logger.info("cri = " + cri);
		Logger.info("전체건수 = " + total);
		model.addAttribute("mlist", mservice.memberlist(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	// 공지사항
	@GetMapping("/noticelist")
	public void pjnoticelist(Criteria cri, @RequestParam("category") int category, Model model) {
		int total = bservice.getTotal(category);
		Logger.info("category = " + category);
		Logger.info("cri = " + cri);
		Logger.info("전체건수 = " + total);
		Logger.info("list목록 = " + bservice.boardlist(cri));
		model.addAttribute("notice", bservice.boardlist(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	// 공지사항 글쓰기
	@GetMapping("/noticewrite")
	public void pjnoticewrite() {

	}

	@PostMapping("/noticewrite")
	public String pjnoticewritePost(PJboardDTO bdto, RedirectAttributes rttr) {
		Logger.info("noticewrite PJboardDTO=" + bdto);
		bservice.boardwrite(bdto);
		rttr.addAttribute("category", bdto.getCategory());
		return "redirect:/project/noticelist?category=4";
	}

	@RequestMapping(value = "/{no}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<ArrayList<BoardAttachDTO>> getDaction(@PathVariable("no") int no) {
		System.out.println("이미지 출력화면 상세페이지=" + no);
		return new ResponseEntity<>(bservice.showImg(no), HttpStatus.OK);
	}

	// 공지사항 상세보기
	@GetMapping("/noticedetail")
	public void pjnoticedetail(Model model, @RequestParam("no") int no) {
		bservice.boardhit(no);
		model.addAttribute("noticedetail", bservice.boarddetail(no));
	}

	// 공지사항 삭제
	@PostMapping("/noticedelete")
	public String boarddelete(PJboardDTO bdto) {
		Logger.info("boarddelete controller bdto = " + bdto);
		bservice.boarddelete(bdto);
		return "redirect:/project/noticelist?category=4";
	}

	// 입양후기
	@GetMapping("/after")
	public void pjafter(Criteria cri, Model model, @RequestParam("category") int category) {
		int total = bservice.getTotal(category);
		Logger.info("cri = " + cri);
		Logger.info("전체건수 = " + total);
		Logger.info("list목록 = " + bservice.boardlist(cri));
		model.addAttribute("after", bservice.boardlist(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@GetMapping("/afterDetail")
	public void pjafterdetail(Model model, @RequestParam("no") int no) {
		bservice.boardhit(no);
		model.addAttribute("afterdetail",bservice.boarddetail(no));
		
	}

	@GetMapping("/afterwrite")
	public void pjafterwrite() {

	}

	@PostMapping("/afterwrite")
	public String pjafterwritePost(PJboardDTO bdto, RedirectAttributes rttr) {
		Logger.info("afterwrite PJboardDTO=" + bdto);
		bservice.boardwrite(bdto);
		rttr.addAttribute("category", bdto.getCategory());
		return "redirect:/project/after?category=1";
	}

	@GetMapping("/afterupdate")
	public void pjboardupdate(@RequestParam("no") int no, Model model) {
		model.addAttribute("update", bservice.boarddetail(no));
		
	}

	@PostMapping("/afterupdate")
	public String afterupdatepost(PJboardDTO bdto) {
		System.out.println("controller="+bdto);
		bservice.boardupdate(bdto);
		
		return "redirect:/project/after?category=1";

	}

	@PostMapping("/afterdelete")
	public String pjafterdelete(PJboardDTO bdto) {
		Logger.info("afterdelete controller bdto = " + bdto);
		bservice.boarddelete(bdto);
		return "redirect:/project/after?category=1";
	}

}
