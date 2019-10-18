<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="searchForm">
<fieldset>
		<legend>검색하기</legend>
		<select name="searchOp">
			<option value="id">아이디로 검색</option>
			<option value="name">이름으로 검색</option>
		</select>		
		<input type="text" class="txtSearch" name="searchVal" placeholder="검색어 입력">
		<input type="button" class="btnSearchList" value="찾기">
		<input type="reset"class="btnReset"  value="취소">
	</fieldset>
	<div class="divSearchList"></div>	
</form>
	<div id="divSearchTb">
		<table id="searchTb" border=2></table>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../js/user.js"></script>

</html>