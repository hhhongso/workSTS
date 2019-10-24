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
	
	<input type="hidden" id="pg" value=${pg }> <!-- Controller 에서 model.addAttribute("pg", pg) 로 값 받아옴  -->
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
		<div class="divBtnBoardSearch"><input type="button" value="검색" class="btnBoardSearch"></div>
	</div>
	

<script src = "../resources/js/board.js"></script>

