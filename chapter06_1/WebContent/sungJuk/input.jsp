<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="result.do">
	<table border="2">
		<tr>
			<th width="70px">이름</th>
			<td><input type="text" name="name" size="10"></td>
		</tr>
		
		<tr>
			<th>국어</th>
			<td><input type="text" name="kor" size="10"></td>
		</tr>
		
		<tr>
			<th>영어</th>
			<td><input type="text" name="eng" size="10"></td>
		</tr>
		
		<tr>
			<th>수학</th>
			<td><input type="text" name="math" size="10"></td>
		</tr>
		
		<tr><td colspan="2" align="center"><input type="submit" value="계산"></td></tr>
	
	
	</table>

</form>
</body>
</html>