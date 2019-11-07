package com.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.bean.MemberDTO;
import com.member.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO; 

	@Override
	public MemberDTO getUserById(String id) {
		return memberDAO.getUserById(id);
	}

}
