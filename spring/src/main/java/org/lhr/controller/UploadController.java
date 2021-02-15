package org.lhr.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.lhr.DTO.BoardAttachDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/upload")
public class UploadController {
	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@GetMapping("/uploadForm")
	public String getUploadform() {
		return "/board/uploadForm";
	
	}
	//현재 날짜를 구하는 메서드
	private String getFolder() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str=sdf.format(date);
		return str.replace("-", File.separator);
		
	}
	@PostMapping("/uploadFormAction")
	@ResponseBody
	public ResponseEntity<ArrayList<BoardAttachDTO>> postUpload(MultipartFile[] uploadFile){
		System.out.println("uploadFormAction");
		//AttachFileDTO클래스를 list배열로 생성
		ArrayList<BoardAttachDTO> list = new ArrayList<>();
		//어떤 폴더에 실제로 업로드 할 것인지에 대한 폴더 경로
		String uploadFolder="C:\\uploadFolder";
		String uploadFolderPath=getFolder();
		//날짜별 폴더 ㄷ생성
		//File saveFile=new File(파일업로드 경로, 파일명);
		File uploadPath = new File(uploadFolder,uploadFolderPath);
		
		//똑같은 폴더명을 만들필요가 없기 때문에 exists() 함수를 통해 존재 여부를 파악하여 없으면 (false) 폴더를 생성해라.
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();//폴더를 make해라
		}
		System.out.println("file="+uploadFile.length);
		//향상된 for (타입이 배열타입일 때만 사용)
		for(MultipartFile files:uploadFile) {
			logger.info("파일명="+files.getOriginalFilename());
			logger.info("파일크기="+files.getSize());
			
			BoardAttachDTO attach =new BoardAttachDTO();
			String uploadFileName=files.getOriginalFilename();
			//BoardAttachDTO 클래스에 file Name 변수에 파일이름 저장
			attach.setFileName(uploadFileName);
			//UUID 클래스를 이용하여 중복되지 않는 랜덤값을 생성
			UUID uuid = UUID.randomUUID();
			logger.info("uuid="+uuid);
			uploadFileName=uuid.toString()+"_"+files.getOriginalFilename();
			try {
				File saveFile = new File(uploadPath,uploadFileName);
				logger.info("saveFile="+saveFile);
				files.transferTo(saveFile);
				//BoardAttachDTO클래스에 UploadPath변수에 날짜 포함된 이미지 저장 위치
				attach.setUploadPath(uploadFolderPath);
				attach.setUuid(uuid.toString());
				list.add(attach);
				logger.info("list="+list);
			}catch(Exception e) {
				e.getMessage();
			}
		}//향상된 for end
		return new ResponseEntity<>(list,HttpStatus.OK);

	}//uploadFormAction post end 

	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFiles(String fileName){
		File file = new File("C:\\uploadFolder\\"+fileName);
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header= new HttpHeaders();
			header.add("Content-Type",Files.probeContentType(file.toPath()));
			result=new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),
					header, HttpStatus.OK);
		
		}catch(IOException e) {
			e.printStackTrace();
		}return result;
	}}

