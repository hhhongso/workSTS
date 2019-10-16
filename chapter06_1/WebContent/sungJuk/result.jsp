<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

*** ${sungJukDTO.name } 님의 성적 *** <br>
국어: ${sungJukDTO.kor } <br>
영어: ${sungJukDTO.eng } <br>
수학: ${sungJukDTO.math } <br>
총점: ${sungJukDTO.tot } <br>
평균: ${String.format( "%.3f", sungJukDTO.avg) } <br>

</body>
</html>