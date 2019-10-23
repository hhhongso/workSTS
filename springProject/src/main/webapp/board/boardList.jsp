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
.blTbody td{ text-align: center;}
td.subject { text-align: left;}
</style>

	<input type="hidden" name="sw2" value="0">
	<h3>글목록</h3>
	
	
		<table frame="hsides" rules="rows">
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>작성일 </th>
				<th>조회수 </th>
			</tr>
			<tbody class="blTbody"></tbody>
		</table>
	
	<div style="text-align:center;" class="divBpg"></div><br>
	<form name ="boardListForm" method="post" action="/miniProject/board/boardSearchIns.do?pg=1">
<!-- 	<form name ="boardListForm" method="post" action="/miniProject/board/boardSearch.do?pg=1"> -->
	<div align="center">
		<select id="searchOp" name="searchOp">
			<option id="subject" value="subject"> 제목으로 검색</option>
			<option id="id" value="id"> 아이디로 검색</option>
		</select>
		<input type="text" name="searchWord" size="10" value="${searchWord }">
		<input type="button" value="검색" onclick="searchBoard()">
	</div>
	</form>

<script src = "../resources/js/board.js"></script>
<script>
window.onload = function(){
	if('${searchOp}' == 'subject' || '${searchOp}' == 'id')
		document.getElementById("searchOp").value = '${searchOp}';
}

function boardSearch(pg){
	//자바스크립트는 get방식으로 데이터를 보냄. ${searchWord}의 한글이 깨진다 -> Error:400 => encode시켜주어야함 
	
	location.href="/miniProject/board/boardSearchIns.do?pg="+pg+"&searchOp=${searchOp}&searchWord="+encodeURIComponent("${searchWord}");
}
</script>
