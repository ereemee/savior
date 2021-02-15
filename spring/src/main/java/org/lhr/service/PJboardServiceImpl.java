package org.lhr.service;

import java.util.ArrayList;

import org.lhr.DTO.BoardAttachDTO;
import org.lhr.DTO.Criteria;
import org.lhr.DTO.PJboardDTO;
import org.lhr.mapper.PJboardMapper;
import org.lhr.mapper.BoardAttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class PJboardServiceImpl implements PJboardService {
	@Autowired
	PJboardMapper bmp;
	@Autowired
	BoardAttachMapper bam;

	// 게시판 글쓰기
	public void boardwrite(PJboardDTO bdto) {
		bmp.boardwrite(bdto);
		bdto.getAttachList().forEach(attach -> {
			attach.setNo(bdto.getNo());
			System.out.println("글쓰기 service=" + attach.getNo());
			bam.insert(attach);
		});
	}

	// 게시판 리스트
	public ArrayList<PJboardDTO> boardlist(Criteria cri) {
		return bmp.boardlist(cri);
	}

	// 게시판 상세페이지
	public PJboardDTO boarddetail(@RequestParam("no") int no) {
		return bmp.boarddetail(no);
	}

	// 게시글 수정
	public void boardupdate(PJboardDTO bdto) {
		System.out.println("controller=" + bdto);
		bmp.boardupdate(bdto);
	}

	// 게시판 글삭제
	public void boarddelete(PJboardDTO bdto) {
		System.out.println("boarddelete service bdto = " + bdto);
		bmp.boarddelete(bdto);
	}

	// 페이징 처리하기 위한 전체 건수
	public int getTotal(@RequestParam("category") int category) {
		System.out.println("건수=" + bmp.getTotal(category));
		return bmp.getTotal(category);
	}

	// 이미지 보여주기
	public ArrayList<BoardAttachDTO> showImg(int no) {
		System.out.println("service=" + no);
		return bam.showImg(no);
	}

	// 조회수
	public void boardhit(int no) {
		bmp.boardhit(no);
	}
}
