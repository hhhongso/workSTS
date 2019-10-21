package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO isLogin(Map<String, Object> map);

}
