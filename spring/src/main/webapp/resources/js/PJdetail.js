/**
 * 
 */

$(document).ready(function() {

var no = $('#no').val();
var strImg="";
var uploadUL=$("#readult ul");

//$.getJSON = $.ajax + type: 'GET'
$.getJSON("/project/"+no+".json",function(data){
console.log(data);

$(data).each(function(i,obj){
console.log("obj.uploadPath="+obj.uploadPath);
console.log("obj.uuid="+obj.uuid);
console.log("obj.fileName="+obj.fileName);

var fileCallPath=encodeURIComponent(obj.uploadPath
+"/"+obj.uuid+"_"+obj.fileName);

strImg+="<li data-path='"+obj.uploadPath+"'";
strImg+="data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"'";
strImg+="><div>";
strImg+="<span> "+obj.fileName+"</span><br>";
strImg+="<img src='../upload/display?fileName="+fileCallPath+"'>";

}) //data 끝

uploadUL.append(strImg);


}) //JSON끝
})//ready 끝