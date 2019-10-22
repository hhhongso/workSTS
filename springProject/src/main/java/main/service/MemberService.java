package main.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

public interface MemberService {

	public MemberDTO isLogin(Map<String, Object> map);

	public void write(MemberDTO memberDTO);

	public MemberDTO checkId(String id);

	public List<ZipcodeDTO> checkPost(Map<String, Object> map);

	
}
