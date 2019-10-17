<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
	<tr>
		<th width="100">이름</th>
		<th width="100">아이디</th>
		<th width="100">비밀번호</th>
	</tr>

</table>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$().ready(function(){
	$.ajax({
		type:'post',
		url:'/chapter06_SpringMaven/user/getList',
		dataType: 'json', //text, html, json, xml 네 가지 타입만 가능. 클래스 객체는 가져올 수 없음. => list를 json으로 변경시켜 보낸 뒤, 가져와서 다시 list로 파싱한다. 
		success:function(data){
			console.log(JSON.stringify(data));
			 $.each(data.list, function(index, value){
				$('table').append('<tr><td>'+ value.name + '</td><td>'+ value.id +'</td><td>'+ value.pwd +'</td></tr>')
				
			})

		},
		error:function(){
			console.log("실패");
		}
	});
});
</script>
</html>