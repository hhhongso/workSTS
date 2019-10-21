package main.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO; 
	
	@Override
	public MemberDTO isLogin(Map<String, Object> map) {
		return memberDAO.isLogin(map);
		
	}

}
