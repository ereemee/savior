/**
 * 
 */

function btn_click(str){
	
	//str이 update면 수정 action
	if(str=="boardupdate"){
	//action은 /project/boardupdate
	frm2.action="/project/boardupdate";
	//method는 get방식 
	frm2.method="get";
		
	} else {//str이 delete이면 삭제 action
		
		//action은 /project/boarddelete
		frm2.action="/project/boarddelete";
		//method는 post방식으로
		frm2.method="post";
	
	//get은 보여주는거
	//post는 안보여주는거
	}
	}