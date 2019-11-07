package com.security.provider;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import com.member.service.MemberService;

import lombok.Setter;
@Setter
public class LoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler { //implements AuthenticationSuccessHandler
//	private String defaultTargetUrl;
//	private String alwaysUseDefaultTargetUrl;
	
	@Autowired
	private MemberService memberService;
	
	

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		request.getSession().setMaxInactiveInterval(60*60); // 1시간
		//memberService.updateLoginDateBy(((User)authentication.getPrincipal()).getUsername()); //마지막 로그인 일시 기록 -> 세션 타임아웃 수정
		
		

	}

}
