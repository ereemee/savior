package org.lhr.controller;

import java.util.ArrayList;

import org.lhr.DTO.ReplyDTO;
import org.lhr.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/replies",method=RequestMethod.GET)
public class ReplyController {

	@Autowired
	ReplyService rservice;
	
	@RequestMapping(value="/new", method=RequestMethod.POST)
	//produces부분은 생략이 가능함
	public ResponseEntity<String> rpwrite(@RequestBody ReplyDTO rdto) {
		int result=rservice.replyinsert(rdto);
		System.out.println("result="+result);
	return	result == 1 ? new ResponseEntity<>("success",HttpStatus.OK) 
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value="/{no}",method=RequestMethod.GET)
	public ResponseEntity<ArrayList<ReplyDTO>> getList(@PathVariable("no")int no) {
		System.out.println("controller no="+no);
	return new ResponseEntity<>(rservice.replylist(no),HttpStatus.OK);
	
	//PathVariable 에이젝스에서 한건씩 던져주는 역할 
	
	}

	@RequestMapping(value="/modify",method=RequestMethod.PUT)
	public ResponseEntity<String> reupdate(@RequestBody ReplyDTO rdto){
		System.out.println("수정에 필요한 값이 필요에 있는지 확인 : "+rdto);
		int result = rservice.replyupdate(rdto);
		System.out.println("수정 result : "+result);
		return result == 1 ? new ResponseEntity<>("success",HttpStatus.OK)
							:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public ResponseEntity<String> redelte(@RequestBody ReplyDTO rdto){
		System.out.println("수정에 값필요한 값이 필요에 있는지 확인 : " +rdto);
		int result =rservice.replydelete(rdto);
		System.out.println("수정 result : "+ result);
		return result == 1? new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	} //에이젝스에서 필통으로 받으려면 RequestBody를 써주면됨

}





