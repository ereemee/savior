package org.lhr.DTO;

import java.util.ArrayList;

public class PJboardDTO {

	private int no;
	private String title;
	private String contents;
	private String writedate;
	private String writer;
	private String id;
	private int hit;
	private int category;
	private ArrayList<BoardAttachDTO> attachList;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public ArrayList<BoardAttachDTO> getAttachList() {
		return attachList;
	}
	public void setAttachList(ArrayList<BoardAttachDTO> attachList) {
		this.attachList = attachList;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	@Override
	public String toString() {
		return "PJboardDTO [no=" + no + ", title=" + title + ", contents=" + contents + ", writedate=" + writedate
				+ ", writer=" + writer + ", id=" + id + ", hit=" + hit + ", category=" + category + ", attachList="
				+ attachList + "]";
	}
	
	
	
	
	
}
