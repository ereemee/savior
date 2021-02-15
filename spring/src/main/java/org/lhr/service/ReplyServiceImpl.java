package org.lhr.service;

import java.util.ArrayList;

import org.lhr.DTO.ReplyDTO;
import org.lhr.mapper.ReplyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	ReplyDAO rdao;

	// 댓글쓰기
	public int replyinsert(ReplyDTO rdto) {
		// 댓글쓰기와 관련된 dao연결
		return rdao.replyinsert(rdto);
	}

	// 댓글조회
	public ArrayList<ReplyDTO> replylist(int no) {
		System.out.println("service="+no);
		return rdao.replylist(no);
	}

	// 댓글수정
	public int replyupdate(ReplyDTO rdto) {
		return rdao.replyupdate(rdto);
	}

	// 댓글삭제
	public int replydelete(ReplyDTO rdto) {
		return rdao.replydelete(rdto);

	}

}
