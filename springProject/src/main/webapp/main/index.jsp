<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/indexStyle.css">
</head>
<body>

<header>
<jsp:include page="../template/top.jsp"/> <br>
<jsp:include page="../template/topMenu.jsp"/>
</header>

<nav>
<jsp:include page="../template/leftLogin.jsp"/>
</nav>

<section>
<jsp:include page="${display }"/>
</section>

<footer>
<jsp:include page="../template/bottom.jsp"/>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</html>