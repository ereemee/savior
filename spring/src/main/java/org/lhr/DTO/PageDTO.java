package org.lhr.DTO;

public class PageDTO {

	//pageDTO 는 화면처리를 위한 DTO Criteria는 DAO처리를 위한 DTO
	//처음 페이지 (start page 1,11,21,31)
	private int startPage;
	//끝 페이지 (end page 10,20,30,40(36))
	private int endPage;
	//이전버튼(prev true / false)
	private boolean prev;
	//다음버튼(next true / false) 
	private boolean next;
	// 테이블의 전체 건수를 알아야 끝 번호를 알 수 있음
	private int total;
	//Criteria 필통추가
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri=cri;
		this.total=total;
		
		//endpage 계산식
		this.endPage=(int)(Math.ceil(cri.getPageNum()/5.0))*5;
		//나누기 10을 하고 올림을 한다음에 정수로 형변환을 시켜라
		
		//startpage 계산식
		this.startPage=this.endPage-4;
		
		//realendpage 계산식
		int realEnd=(int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd<endPage) {
			this.endPage=realEnd;
		}
				
		//pre 조건
		this.prev=this.startPage>1;
		//next 조건
		this.next=this.endPage<realEnd;
		
	}
	
	
	
	
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	@Override
	public String toString() {
		return "PageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}
	
	
	
	
}
