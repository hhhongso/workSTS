<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
파라미터로 바로 값 전달: ${param.x } + ${param.y } = ${param.x + param.y } <br>
addObject x, y로 값 전달: ${x } + ${y } = ${x+y } <br>
addAttribute DTO로 값 전달: ${sumDTO.x } + ${sumDTO.y } = ${sumDTO.x + sumDTO.y} <br>
</body>
</html>