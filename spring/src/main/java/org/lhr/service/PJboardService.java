package org.lhr.service;

import java.util.ArrayList;

import org.lhr.DTO.BoardAttachDTO;
import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJboardDTO;
import org.springframework.web.bind.annotation.RequestParam;

public interface PJboardService {
	// 게시판 글쓰기
	public void boardwrite(PJboardDTO bdto);

	// 게시판 리스트
	public ArrayList<PJboardDTO> boardlist(Criteria cri);

	// 게시판 상세페이지
	public PJboardDTO boarddetail(@RequestParam("no") int no);

	// 게시판 글수정
	public void boardupdate(PJboardDTO bdto);

	
	// 게시판 글삭제
	public void boarddelete(PJboardDTO bdto);

	
	// 페이징 처리하기 위한 전체 건수
	public int getTotal(@RequestParam("category") int category);

	// 첨부파일
	public ArrayList<BoardAttachDTO> showImg(int no);
	
	//조회수
	public void boardhit(int no);

}
