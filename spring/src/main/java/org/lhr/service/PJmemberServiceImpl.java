package org.lhr.service;

import java.util.ArrayList;

import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJmemberDTO;
import org.lhr.mapper.PJmemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class PJmemberServiceImpl implements PJmemberService {
	@Autowired
	PJmemberMapper pjmp;
	//회원정보수정
	public void memberupdate(PJmemberDTO mdto) {
		pjmp.memberupdate(mdto);
	}
	//회원탈퇴
	public void memberdelete(PJmemberDTO mdto) {
		pjmp.memberdelete(mdto);
	}
	//회원가입
	public void memberinsert(PJmemberDTO mdto) {
		pjmp.memberinsert(mdto);
	}
	//회원정보보기
	public PJmemberDTO memberdetail(@RequestParam("id") String id) {
		return pjmp.memberdetail(id);
	}
	//전체회원목록
	public ArrayList<PJmemberDTO> memberlist(Criteria cri) {
		return pjmp.memberlist(cri);
	};
	
	
	
	//페이징 처리를 위한 전체 건수
	public int getTotal() {
		return pjmp.getTotal();
	}
	
	
	
	//로그인
	public PJmemberDTO login(PJmemberDTO mdto) {
		return pjmp.login(mdto);
	}


}











