package user.service;

import java.util.List;
import java.util.Map;

import lombok.Setter;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Setter
public class UserSelectService implements UserService {
	private UserDAO userDAO;
	
	@Override
	public void execute() {
		//DB
		List<Map<String, Object>> list = userDAO.getList();
		
	
		//응답
		System.out.println("데이터 조회 완료");

	}

}
