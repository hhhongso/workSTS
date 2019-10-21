<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
${sessionScope.memName } 님 로그인 
<br><br>
<input type = "button" value = "로그아웃" class="btnLogout">
<input type = "submit" value = "회원정보수정" onclick="location.href='/springProject/member/modifyForm'">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src = "../resources/js/member.js"></script>