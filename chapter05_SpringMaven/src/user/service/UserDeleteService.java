package user.service;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.dao.UserDAO;

@Service
public class UserDeleteService implements UserService {
	@Autowired
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
