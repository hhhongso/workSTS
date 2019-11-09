package com.security.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.member.bean.MemberDTO;
import com.member.service.MemberService;

public class UserAuthServiceImpl implements UserDetailsService, AuthenticationProvider{
	@Autowired
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		//DB에서 유저 정보를 불러오는 메소드
		System.out.println("hi loadUserByUserName: " + id);
		MemberDTO memberDTO = memberService.getUserById(id);
		System.out.println("successfully get memberDTO");
		
		UserDetails user = (UserDetails) memberDTO;
		
		if(memberDTO == null) {
			throw new UsernameNotFoundException("No user found with username " + memberDTO.getName());
		}
		
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		
		if(memberDTO.getId().equals("admin")) {
			roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
				
		} else {
			roles.add(new SimpleGrantedAuthority("ROLE_USER"));
			
		}
		
		System.out.println("add role to " + user.getUsername());
		for (int i = 0; i < roles.size(); i++) {
			System.out.println("role: "+roles.get(i));
			
		}

//        UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(id, pwd, roles);
//        result.setDetails(new MemberDTO(id, pwd));
		
		/*
		 * 사용자가 입력한 id/pwd 를 검증하기 위해, 저장소(DB)에 해당 id/pwd 가 있는지 확인한다. 
		 * loadUserByUsername(): 파라미터 username에 대한 데이터가 없을 시 예외를 날려주고, 
		 * 데이터가 있을 시 UserDetails 객체에 해당 id, pwd, role 을 넣어 리턴시킨다. 
		 * role은 user, admin 등이 될 수 있겠다. 
		 * ==> 리턴받은 객체로 스프링 내부에서 인증에 대한 판단을 진행한다. 
		 * 
		 */
		
		return user;
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return false;
	}

}
