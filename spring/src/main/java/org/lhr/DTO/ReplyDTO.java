package org.lhr.DTO;

import java.util.Date;

public class ReplyDTO {
	private int rno; //댓글 번호
	private int no; //게시판 번호
	private String reply; //댓글 내용
	private String id; //댓글 작성자
	private Date replydate; //댓글 작성일
	private Date updatedate; //댓글 수정일
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getReplydate() {
		return replydate;
	}
	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", no=" + no + ", reply=" + reply + ", id=" + id + ", replydate=" + replydate
				+ ", updatedate=" + updatedate + "]";
	}
	
	
	
}