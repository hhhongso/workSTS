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

	<form action="">
		<input type="hidden" id="viewPg" value="${pg }">
		<input type="hidden" id="viewSeq" value="${seq }">
		<table class="bvTb" frame="hsides" rules="rows" style="width:100%; height:200px;">
		</table>
		<c:if test="${memId == boardDTO.id }">		
			<input type="button" value="글수정" onclick="location.href='/springProject/board/boardModifyForm?seq=${boardDTO.seq }&pg=${pg }'">
			<input type="button" value="글삭제" onclick="delConfirm(${boardDTO.seq})">
		</c:if>
		<input type="button" value="목록" onclick="location.href='/springProject/board/boardList?pg=${pg }'">
		<input type="button" value="답글쓰기" onclick="location.href='/springProject/board/boardReplyForm?pg=${pg }&pseq=${boardDTO.seq}'"> <br>
	
	</form>


<script src="../resources/js/board.js"></script>
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
			
			
		},
		error: function(){}
	});
	
}); 
</script>