<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="loginForm">
		<table class="tab" border=3>
			<tr>
				<th class="idtab">아이디</th>
				<td><input type="text" name="id" class="loginId" size=10>
					<div class="divLoginId"></div>
				</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" class="loginPwd" size=20>
					<div class="divLoginPwd"></div>
				</td>
			</tr>

			<tr>
				<td colspan=2 align="center">
					<input type="button" value="로그인" class="btnLogin"> 
					<input type="button" value="회원가입" class="btnWriteForm">
				</td>
			</tr>
		</table>
	</form>

<div class="divLoginResult"></div>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src = "../resources/js/member.js"></script>