<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>삭제할 아이디 입력:</legend>
		<input type="text" class="txtDeleteId" placeholder="아이디 입력">
		<input type="button" class="btnDelete" value="삭제">
		<input type="reset"class="btnReset"  value="취소">
	</fieldset>
	<div class="divDelete"></div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../js/user.js"></script>
</html>