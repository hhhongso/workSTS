package user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import lombok.Setter;
import user.bean.UserDTO;
import user.dao.UserDAO;

public class UserSearchService implements UserService {
	@Setter
	private UserDAO userDAO; 

	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);
		System.out.println("검색옵션: \n 1) 이름 검색  \n 2) 아이디 검색 ");
		int choice = scan.nextInt();
		Map<String, String> map = new HashMap<String, String>();

		if(choice == 1) {
			System.out.print("검색할 이름 입력: ");
			String name = scan.next();		
			
			map.put("key", "name");
			map.put("value", name);
			
		} else if (choice == 2) {
			System.out.print("검색할 아이디 입력: ");
			String id = scan.next();
			
			map.put("key", "id");
			map.put("value", id);
		}
		
		List<UserDTO> list = userDAO.searchUserList(map);
		
		if(list.size() == 0) {
			System.out.println("조회 내역이 없습니다. ");
			return;
		}
		
		for(UserDTO userDTO: list) {
			System.out.println(userDTO.toString());
		}
		
	}

}
