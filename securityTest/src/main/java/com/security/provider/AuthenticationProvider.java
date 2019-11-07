package com.security.provider;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import com.member.service.MemberService;
import com.security.service.UserAuthService;

public class AuthenticationProvider extends DaoAuthenticationProvider {
	@Autowired
	private MemberService memberSerivce;
	
	@Override
	protected void additionalAuthenticationChecks(UserDetails userDetails,
			UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
		
		super.additionalAuthenticationChecks(userDetails, authentication);
	}
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String id = (String) authentication.getPrincipal();
		String pwd = (String) authentication.getCredentials();
		
		memberSerivce.getUserById(id);
		
		return super.authenticate(authentication);
	}
	
	
}
