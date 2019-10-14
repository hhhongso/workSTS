package user.service;

import java.util.List;
import java.util.Map;

import lombok.Setter;
import user.bean.UserDTO;
import user.dao.UserDAO;

public class UserSelectService implements UserService {
	@Setter
	private UserDAO userDAO;
	
	@Override
	public void execute() {
		//DB
		List<UserDTO> list = userDAO.getUserList();
		System.out.println("이름 \t 아이디 \t 비밀번호");

		for(UserDTO userDTO : list) {
			System.out.println(userDTO.toString());
		}
	
		//응답
		System.out.println("데이터 조회 완료");

	}

}
