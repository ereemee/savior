/**
 * 
 */

function btn_click(str){

	//str이 update이면 수정 action
	if(str=="update"){
		//action은 /project/update
		
		frm1.action="/project/afterupdate";
		
		//method는 get방식
		frm1.method="get";
		
	}else{//str이 delete면 삭제 action

		//action은 /board/delete
		frm1.action="/project/afterdelete";
		
		//method는 post방식이 된다 
		frm1.method="post";
	
	//여기서 update는 수정기능을 거쳐서 화면으로 넘어가기때문에 get
	//delete는 화면없이 바로 삭제되기 때문에 post로 처리됨
		
	}
	
}