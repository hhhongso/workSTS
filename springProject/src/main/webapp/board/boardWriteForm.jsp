<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="">
th{ width: 100px;}

</style>

	<form name="boardWriteForm" method="post" action="/springProject/board/boardWrite">
		<c:if test="${pseq == null }">
			<h3> 글쓰기 </h3>		</c:if>
		<c:if test="${pseq != null }">
			<h3> 답글쓰기 </h3>		
	
			<input type="hidden" name="pg" value="${pg}">
			<input type="hidden" name="pseq" value="${pseq}">
		</c:if>
		<table border="10">
			<tr>
				<th>제목</th>
				<td><input type="text" class="txtSubject" name="subject" size="20" style="width: 400px;">
					<div class="divSubject"></div>
				</td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td><textarea class="txtContent" name="content" style="width: 400px; height:200px; overflow:auto;"></textarea>
					<div class="divContent"></div>
				</td>
			</tr>	
			
			<tr>
				<td colspan=2 align="center">
					<input type="button" value="글쓰기" class="btnBoardWrite">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
	</form>

<script src="../resources/js/board.js"></script>
