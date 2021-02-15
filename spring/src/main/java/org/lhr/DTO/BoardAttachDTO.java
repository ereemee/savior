package org.lhr.DTO;


public class BoardAttachDTO {
	//UUID
	private String uuid;
	//업로드 경로
	private String uploadPath;
	//파일이름
	private String fileName;
	//no
	private long no;
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	@Override
	public String toString() {
		return "BoardAttachDTO [uuid=" + uuid + ", uploadPath=" + uploadPath + ", fileName=" + fileName + ", no=" + no
				+ "]";
	}
	
	
	
	
}
