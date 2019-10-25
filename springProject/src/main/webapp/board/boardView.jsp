<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style type="">
.content{
/* 	width: 400px;
	height: 200px;  */
/* 	text-align:top; */
	white-space:pre-line; 
 	word-break: break-all;
	overflow:auto;
}
</style>

	<form name="boardViewForm">
		<input type="hidden" id="viewPg" name="viewPg" value=${pg }>
		<input type="hidden" id="viewSeq" name="viewSeq" value=${seq }>
		<table class="bvTb" frame="hsides" rules="rows" style="width:100%; height:200px;">
		</table>
		<input type="hidden" id="viewId" name="viewId">
			
		<span id="showme" style="display: none;">	
			<input type="button" value="글수정" onclick="mode(1)">
			<input type="button" value="글삭제" onclick="mode(2)">
		</span>
		
		<input type="button" value="목록" onclick="location.href='/springProject/board/boardList?pg=${pg }'">
		<input type="button" value="답글쓰기" onclick="mode(3)"> <br> 
	
	</form>


<script src="../resources/js/board.js"></script>
<script>
function mode(num){
	if(num == 1) {
		document.boardViewForm.method = 'post';
		document.boardViewForm.action = '/springProject/board/boardModifyForm';
		document.boardViewForm.submit();
	} else if(num == 2){
		document.boardViewForm.method = 'post';
		document.boardViewForm.action = '/springProject/board/boardDelete';
		document.boardViewForm.submit();
	} else {
		document.boardViewForm.method = 'post';
		document.boardViewForm.action = '/springProject/board/boardReplyForm';
		document.boardViewForm.submit();
	}
	
	
}
</script>
<script>
$().ready(function(){ //document = boardView
	$.ajax({
		type:'post',
		url:'../board/getBoardView',
		data:{'seq' : $('#viewSeq').val(), 
			'pg': $('#viewPg').val()},
		dataType: 'json',
		success: function(data){
			console.log(data.boardDTO);
			$('<tr/>').append($('<td/>', {
				colspan: 3				
				}).append($('<h3/>', {
					text: data.boardDTO.subject
					}))
				).appendTo('.bvTb');
			
			$('<tr/>').append($('<td/>', {
				text: '글번호: '+ data.boardDTO.seq
			})).append($('<td/>', {
				text: '작성자: '+ data.boardDTO.name
			})).append($('<td/>', {
				text: '조회수: '+ data.boardDTO.hit
			})).appendTo('.bvTb');
			$('<tr/>').append($('<td/>', {
				colspan: 3,
				text: data.boardDTO.content
			})).appendTo('.bvTb');
			
			$('#viewId').val(data.boardDTO.id);
			if('${memId}' == data.boardDTO.id) $('#showme').show();
			
		},
		error: function(){}
	});
	
}); 
</script>