package user.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import lombok.Setter;
import user.bean.UserDTO;
import user.dao.UserDAO;

public class UserDeleteService implements UserService {
	@Setter
	private UserDAO userDAO;
	
	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);
		System.out.print("삭제할 아이디 입력: ");
		String id = scan.next();
		int cnt = userDAO.deleteUser(id);
		
		if(cnt == 0) {
			System.out.println("찾는 아이디가 없습니다. ");
			return;
		}

		System.out.println("데이터를 삭제하였습니다. ");

	}

}
