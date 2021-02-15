package org.lhr.mapper;

import java.util.ArrayList;

import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJmemberDTO;
import org.springframework.web.bind.annotation.RequestParam;

public interface PJmemberMapper {
	// 회원 정보 수정
	public void memberupdate(PJmemberDTO mdto);

	// 회원 탈퇴
	public void memberdelete(PJmemberDTO mdto);

	// 회원 가입
	public void memberinsert(PJmemberDTO mdto);

	// 회원 정보 보기
	public PJmemberDTO memberdetail(@RequestParam("id") String id);

	// 회원 리스트
	public ArrayList<PJmemberDTO> memberlist(Criteria cri);

	// 페이징 처리 위한 전체 건수
	public int getTotal();
	
	//로그인
	public PJmemberDTO login(PJmemberDTO mdto);

}


