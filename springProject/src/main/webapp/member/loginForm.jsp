<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="loginForm">
		<table class="tab" border=3>
			<tr>
				<th class="idtab">아이디</th>
				<td><input type="text" name="id" size=10></td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" size=20></td>
			</tr>

			<tr>
				<td colspan=2 align="center">
					<input type="button" value="로그인" onclick="checkLogin()"> 
					<input type="button" value="회원가입" onclick="location.href='/miniProject/member/writeForm.do'">
				</td>
			</tr>
		</table>
	</form>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src = "../resources/js/member.js"></script>