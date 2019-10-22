package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

public interface MemberDAO {

	public MemberDTO isLogin(Map<String, Object> map);

	public void write(MemberDTO memberDTO);

	public MemberDTO getMember(String id);

	public List<ZipcodeDTO> getZipcodeList(Map<String, Object> map);

}
