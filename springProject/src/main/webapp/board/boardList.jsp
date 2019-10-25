<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="../resources/css/board.css">
<style>
#currPaging {
	text-decoration: underline;
	color: red;
	font-weight: bold;
}
span {cursor:pointer;}
</style>

	<input type="hidden" name="sw2" value="0">
	<h3>글목록</h3>
	
	<input type="hidden" id="pg" name="pg" value=${pg }> <!-- Controller 에서 model.addAttribute("pg", pg) 로 값 받아옴  -->
		<table frame="hsides" rules="rows" style="width:100%;">
			<tr>
				<th width="100">글번호</th>
				<th width="200">글제목</th>
				<th width="100">작성자</th>
				<th width="100">작성일 </th>
				<th width="100">조회수 </th>
			</tr>
			<tbody class="blTbody"></tbody>
		</table>
	
	<div style="text-align:center;" class="divBpg"></div><br>
	
	<div align="center">
		<select id="searchOp" name="searchOp">
			<option id="subject" value="subject"> 제목으로 검색</option>
			<option id="id" value="id"> 아이디로 검색</option>
		</select>
		<input type="text" id="searchVal" name="searchVal" size="10" value="${searchVal }">
		<div class="divBoardSearch"></div>
		<input type="button" value="검색" id="btnBoardSearch">
	</div>
	

<script src = "../resources/js/board.js"></script>
<script type="text/javascript">
//searchHTML() onclick=search() 시
function search(pg){
	console.log("search()를 통해 받아온 pg: "+pg);
	$('input[name=pg]').val(pg);
	console.log("<input> pg에 값 입력: "+ $('input[name=pg]').val());
//	$('.btnBoardSearch').trigger('click'); //click 이벤트를 자동으로 요청. 
	$('#btnBoardSearch').trigger('click', 'trigger'); //click 이벤트를 자동으로 요청. 
	
}
</script>

<script type="text/javascript">
$().ready(function(){ //여기서 document = boardList.jsp
	$.ajax({
		type: 'post',
		url:'../board/getBoardList',
		data: {'pg': $('#pg').val()}, // hidden value 값
		dataType:'json',
		success: function(data){
			console.log(data.list);
			$.each(data.list, function(index, value){
				if(value.pseq == 0) {
					$('<tr/>').append($('<td/>', {
						align: 'center',
						text:value.seq
					})).append($('<td/>').append($('<a/>', {
						id: 'subjectA',
						'class': value.seq+'',
						href: '#',				
						text:value.subject
					}))).append($('<td/>', {
						align: 'center',
						text:value.id
					})).append($('<td/>', {
						align: 'center',
						text:value.logtime
					})).append($('<td/>', {
						align: 'center',
						text:value.hit
					})).appendTo($('.blTbody'));					
				} else{
					$('<tr/>').append($('<td/>', {
						align: 'center',
						text:''
					})).append($('<td/>').append($('<img>', {
						src: '../image/reply.gif'
					})).append($('<a/>', {
						id: 'subjectA',
						'class': value.seq+'',
						href: '#',				
						text:value.subject
					}))).append($('<td/>', {
						align: 'center',
						text:value.id
					})).append($('<td/>', {
						align: 'center',
						text:value.logtime
					})).append($('<td/>', {
						align: 'center',
						text:value.hit
					})).appendTo($('.blTbody'));	
				}
			}); //$.each - data.list
			
			$('.divBpg').append(data.boardPaging.pagingHTML);
			$('.divBpg a').css('cursor', 'pointer');			

			$('.blTbody').on('click', '#subjectA', function(){
				if(data.memId == null) alert("먼저 로그인 해주세요! ");
				else{
					//alert($(this).attr('class'));
					location.href='/springProject/board/boardView?seq='+$(this).attr('class')+'&pg='+$('#pg').val();
				}
			});
		},
		error: function(err){
			console.log(err);
		}
	});	
});



</script>
