<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="writeForm">
	<table border="2">
		<tr>
			<th width="70">이름</th>
			<td>
				<input type="text" class="txtName" name="name" placeholder="이름을 입력하세요">
				<div class="divName"></div>
			</td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" class="txtId" name="id" placeholder="아이디를 입력하세요">
				<div class="divId"></div>
			</td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" class="txtPwd" name="pwd" placeholder="비밀번호를 입력하세요">
				<div class="divPwd"></div>
			</td>
		</tr>
		
		<tr> 
			<td colspan="2" align="center">
				<button type="button" id="btnWriteForm">등록</button> <!-- <button/>의 default는 submit -->
				<input type="reset" id="btnResetForm" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../js/user.js"></script>
</html>