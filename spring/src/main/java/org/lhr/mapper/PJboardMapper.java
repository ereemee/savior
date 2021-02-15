package org.lhr.mapper;

import java.util.ArrayList;

import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJboardDTO;
import org.springframework.web.bind.annotation.RequestParam;

public interface PJboardMapper {
	// 게시판 글쓰기
	public void boardwrite(PJboardDTO bdto);
	
	// 게시판 리스트
	public ArrayList<PJboardDTO> boardlist(Criteria cri);

	// 게시판 상세페이지
	public PJboardDTO boarddetail(@RequestParam("no") int no);

	// 수정
	public void boardupdate(PJboardDTO bdto);

	// 삭제
	public void boarddelete(PJboardDTO bdto);

	// 조회수
	public void boardhit(int no);

	// 페이징 처리 하기 위한 전체 건수
	public int getTotal(@RequestParam("category") int category);
}























