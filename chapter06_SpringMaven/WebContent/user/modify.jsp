<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
				<input type="text" class="txtId" name="id">
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
				<button type="button" id="btnModifyForm">수정</button> <!-- <button/>의 default는 submit -->
				<input type="reset" id="btnResetForm" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$().ready(function(){
	$.ajax({
		type:'post',
		url:'/chapter06_SpringMaven/user/getUser',
		dataType: 'json', //text, html, json, xml 네 가지 타입만 가능. 클래스 객체는 가져올 수 없음. => list를 json으로 변경시켜 보낸 뒤, 가져와서 다시 list로 파싱한다. 
		success:function(data){
			console.log(JSON.stringify(data));
		},
		error:function(){
			console.log("실패");
		}
	});
	
	
	$('#btnModifyForm').click(function(){
		$.ajax({
			type:'post',
			url:'/chapter06_SpringMaven/user/modifyUser',
			data: $('#modifyForm').serialize(), 
			success:function(){
				console.log("성공");
				location.href='/chapter06_SpringMaven/main/index.do';
			},
			error:function(){
				console.log("실패");
			}
		});		
	});
});
</script>
</html>