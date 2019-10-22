package main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO; 
	
	@Override
	public MemberDTO isLogin(Map<String, Object> map) {
		return memberDAO.isLogin(map);
		
	}

	@Override
	public void write(MemberDTO memberDTO) {
		memberDAO.write(memberDTO);
		
	}

	@Override
	public MemberDTO checkId(String id) {
		return memberDAO.getMember(id);
		
	}

	@Override
	public List<ZipcodeDTO> checkPost(Map<String, Object> map) {
		return memberDAO.getZipcodeList(map);
	}

}
