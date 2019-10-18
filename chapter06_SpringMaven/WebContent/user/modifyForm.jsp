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
		<legend>수정할 아이디 입력:</legend>
		<input type="text" class="txtSearchId" placeholder="아이디 입력">
		<input type="button" class="btnSearch" value="검색">
		<input type="reset"class="btnReset"  value="취소">
	</fieldset>
	<div class="divSearch"></div>
	
	<form id="modifyForm">
	<table border="2">
		<tr>
			<th width="70">이름</th>
			<td>
				<input type="text" class="txtName" name="name">
				<div class="divName"></div>
			</td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" class="txtId" name="id" readonly>
				<div class="divId"></div>
			</td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" class="txtPwd" name="pwd">
				<div class="divPwd"></div>
			</td>
		</tr>
		
		<tr> 
			<td colspan="2" align="center">
				<button type="button" id="btnModify">수정</button> <!-- <button/>의 default는 submit -->
<!-- 				<input type="reset" id="btnResetForm" value="취소"> -->
			</td>
		</tr>
	</table>
	</form>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../js/user.js"></script>
</html>