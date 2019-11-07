package com.security.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.member.bean.MemberDTO;
import com.member.service.MemberService;

public class UserAuthService implements UserDetailsService {
	@Autowired
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		//DB에서 유저 정보를 불러오는 메소드
		
		MemberDTO memberDTO = memberService.getUserById(id);
		 
		if(memberDTO == null) {
			throw new UsernameNotFoundException("No user found with username " + memberDTO.getName());
		}
		
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		UserDetails user = new User(id, memberDTO.getPwd(), roles);
		
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

}
