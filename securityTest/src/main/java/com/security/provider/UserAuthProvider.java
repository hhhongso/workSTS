package com.security.provider;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.Setter;

@Setter
public class UserAuthProvider {
	private UserDetailsService userDetailsService;
	private PasswordEncoder passwordEncoder;

}
