package user.service;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.dao.UserDAO;

//Service: DB연동하여, 데이터 받기 / DB 연동 / 응답을 실행 시 Service. 기능은 Component와 같으나, 보다 세부적으로 나누어 둔 것. 
@Service
public class UserInsertService implements UserService {
	@Autowired
	private UserDTO userDTO;
	@Autowired
	private UserDAO userDAO;
	

	@Override
	public void execute() {
		//데이터 받기
		Scanner scan = new Scanner(System.in);
		System.out.print("이름 입력: ");
		String name = scan.next();
		System.out.print("아이디 입력: ");
		String id = scan.next();
		System.out.print("비밀번호 입력: ");
		String pwd = scan.next();
		
		userDTO.setName(name);
		userDTO.setId(id);
		userDTO.setPwd(pwd);
		
		//DB
		userDAO.userWrite(userDTO);
		
		//응답
		System.out.println("데이터를 저장하였습니다. ");
	}

}
