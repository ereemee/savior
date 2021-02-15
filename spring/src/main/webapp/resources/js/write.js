/**
 * 
 */
$(document).ready(function(){
	var formObj=$("form[role='form']"); //속성선택자
	$("input[type='submit']").on("click",function(e){
		//input태그에 type이 submit인 속성의 값을 선택해라
		e.preventDefault();
		console.log("서브밋 버튼 클릭함")
		var str="";
		$(".uploadResult ul li").each(function(i,obj){
			var jobj=$(obj);
			str+="<input type='text' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
			str+="<input type='text' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str+="<input type='text' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
		//	alert(str);
		})
		formObj.append(str).submit();
	}) //전송버튼을 눌럿을때 어떻게해라
	
	
	
	
	$("input[type='file']").change(function(e){
		//데이터를 change할때마다 
		var formData = new FormData();
		var inputFile = $("input[name='uploadFile']");
		console.log(files);
		var files=inputFile[0].files;
		for(var i=0; i<files.length;i++){
			formData.append("uploadFile",files[i]);
		}
		$.ajax({
			url:"/upload/uploadFormAction",
			data:formData,
			dataType:"json",
			
			//processData와 contentType은 파일 업로드시 false가 되어야함
			processData:false,
			contentType:false,
			type:'POST',
			success:function(data){
				alert("업로드 됨");
				console.log(data);
				showUploadResult(data);
				
			}
		})
		//showUploadResult
		function showUploadResult(uploadResultArr){
			if(!uploadResultArr || uploadResultArr.length==0){
				return;
			}
			var uploadUL=$(".uploadResult ul");
			var str="";
			$(uploadResultArr).each(function(i,obj){
				console.log("obj.uploadPath="+obj.uploadPath);
				console.log("obj.uuid="+obj.uuid);
				console.log("obj.fileName="+obj.fileName);
				var fileCallPath=encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				str+="<li data-path='"+obj.uploadPath+"'";
				
				str+=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"'";
				
				str+=" ><div>";
	
				str+="<span> "+obj.fileName+"</span>";
				
				str+="<img src='/upload/display?fileName="+fileCallPath+"'>";
			
				str+="</div></li>"
			
				
			})
			uploadUL.append(str);
		
		}
		
		
	})
	
	
	
	
	
	
})