package org.lhr.service;

import java.util.ArrayList;



import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJmemberDTO;
import org.springframework.web.bind.annotation.RequestParam;

public interface PJmemberService {
	// 회원정보수정
	public void memberupdate(PJmemberDTO mdto);

	// 회원가입
	public void memberinsert(PJmemberDTO mdto);

	
	
	
	// 회원 탈퇴
	public void memberdelete(PJmemberDTO mdto);


	
	// 회원 리스트
	public ArrayList<PJmemberDTO> memberlist(Criteria cri);

	// 회원정보 상세
	public PJmemberDTO memberdetail(@RequestParam("id") String id);

	
	
	// 페이징 처리하기 위한 전체 건수
	public int getTotal();

	
	
	//로그인
	public PJmemberDTO login(PJmemberDTO mdto);
}














