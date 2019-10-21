package main.service;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberService {

	public MemberDTO isLogin(Map<String, Object> map);

}
