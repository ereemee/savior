/**
 * ajax를 이용한 댓글 처리
 */


//댓글 쓰기


//댓글 쓰기 버튼을 클릭하면
$(document).ready(function(){
	
	var no=$("#no").val(); //게시판 번호
	var rno="";
	getList();
	//alert(no)
//댓글 목록 리스트 함수 (getList)
	function getList(){
		var no=$("#no").val(); //게시판 번호
		var str="";
		//alert("getList="+no)
		$.getJSON("/replies/"+no+".json",function(data){
			console.log(data);
			$(data).each(function(){
				str+="<li data-rno="+this.rno+" id=replies"+this.rno+">"
					+"<input type='hidden' id=recontent"+this.rno+" value='"+this.reply+"'>"+this.reply
					
					+"<div id=moddiv"+this.rno+"></div><div class='text-right'><button class='btn btn-primary' id='replyModBtn'>수정</button> "
					+"<button class='btn btn-primary' id='replyDelBtn'>삭제</button></div></li>"
					//다 id값이 같기 때문에 rno값을 붙여서 구분할 수 있게 만들어줌 댓글1와 댓글2를 구분할 수 있게끔.
					
					//+"<input type='hidden' id=id"+this.rno+" value='"+this.id+"'>"+this.id
			});
			$("#replies").html(str);
			//jsp파일의 ul태그 안으로 들어가게 해줌 
			
			
		}) //this의 역할은 많은 댓글을 가져오면 rno값으로 해당값을 가져오기위한 역할.
		//input hidden태그를 쓰는 이유는 id값을 가져오기 위해서 쓴 것.
		//여기서 유의해야할것은 따옴표들 위치와 쓰임 
		
		
	}//getList()end
	
	//댓글 수정 버튼 클릭
	$("#replies").on("click","#replyModBtn",function(e){ //delegate
		e.preventDefault(); //댓글 수정 이벤트를 눌렀을때 댓글 쓰기 이벤트의 기록이 남아있기 때문에 이어받게되어있음 그것을 막기위해 사용
		 
		var reply=$(this).parent();
		rno = reply.attr("data-rno");
		var recontent=$("#recontent"+rno).val();
		var id=$("#id"+rno).val();
		//alert(recontent);
		var modstr="";
		modstr+="<div><textarea id=reply"+rno+" name='reply' rows='10' cols='50'>"
				+recontent+"</textarea><br>"
				+"<input id='id' type='text' name='id' value='"+id+"' readonly>"
				+"<button id='replyRnoModBtn'>댓글 수정</button></div>";
		//여기서 moddiv역할은 수정 버튼을 눌렀을때 열리면서 수정창을 넣을 수 있게 해주는 역할
		//위에서 만든 id값을 호출해서 modstr(수정 창)에 넣어줄것임
		//"#replyer"+rno를 하는 이유는 위에 that이 that.rno이기 떄문에 that1이런식으로 값을 받아오는데 그것과 맞춰주기 위해서 rno를 붙여줌 (문자열)
		
		$("#moddiv"+rno).html(modstr);
		});
		
		$("#replies").on("click","#replyRnoModBtn",function(e){
			e.preventDefault();
			var reply=$("#reply"+rno).val();
			
			$.ajax({
				type:"put",
				url:"/replies/modify",
				contentType:"application/json; charset=utf-8",
				data:JSON.stringify({rno:rno,reply:reply}),
				success:function(result){
					if(result=="success"){
						alert("수정되었습니다.");
						getList();
					}
				},
				error:function(){
					//전송에 error가 발생 했을 때 
					alert("댓글쓰기 실패");
				}
				
			})
			
		});//각 댓글별 수정 버튼 End
		
		$("#replies").on("click","#replyDelBtn",function(e){
			
			e.preventDefault();
			var reply=$(this).parent();
			rno=reply.attr("data-rno");
			//실제 tbl_reply 테이블에 delete하기
			$.ajax({
				type:"delete",
				url:"/replies/delete",
				contentType:"application/json; charset=utf-8",
				data:JSON.stringify({rno:rno}),
				success:function(result){
					if(result=="success"){
					alert("삭제되었습니다.");
					getList();
				}
				
			},
			error:function(){
				alert("댓글쓰기 실패");
				}
				
			})
			
		}); //댓글삭제 버튼 클릭 End
		
		
		
	//댓글 쓰기 버튼 클릭	
	$("#replyAddBtn").on("click",function(e){
		e.preventDefault(); // 그전 내역 모두 지우고 처음으로 다시 돌아감 
		var reply=$("#reply").val(); //댓글 내용
		var no=$("#no").val(); //게시판 번호
			//alert(no)
			//alert(reply);
			//alert(replyer);
			//ajax
			$.ajax({
				type:"post",
				//get이냐 post냐 form태그 method
				//insert작업이니까 post
				url:"/replies/new",
				//서버주소 form태그 action에 
				data:JSON.stringify({no:no,reply:reply}),
				//controller에 보낼 데이터
				//{}이타입으로 보내줘라..
				contentType:"application/json; charset=utf-8",
					//controller에 받을 데이터 타입이 뭔지 리턴타입
				success:function(data){
					if(data=="success"){
					alert("댓글 쓰기 성공");
				// 전송이 성공적으로 완료된 후 어떻게 처리할것인지
				getList();
				}
						},
				error:function(){
				// 전송이 실패된 후 어떻게 처리할것인지
				}
			}) //댓글 쓰기 ajax end
		})//댓글 쓰기 버튼을 클릭했을 때 end 
})