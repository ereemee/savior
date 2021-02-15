package org.lhr.mapper;

import java.util.ArrayList;

import org.lhr.DTO.ReplyDTO;

public interface ReplyDAO {
	//댓글쓰기
	public int replyinsert(ReplyDTO rdto);
	//댓글조회
	public ArrayList<ReplyDTO> replylist(int no);
	//댓글수정
	public int replyupdate(ReplyDTO rdto);
	//댓글삭제
	public int replydelete(ReplyDTO rdto);
}
