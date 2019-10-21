package user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.dao.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public void write(UserDTO userDTO) {
		userDAO.write(userDTO);
	}

	@Override
	public List<UserDTO> getList() {
		return userDAO.getUserList();
	}

	@Override
	public UserDTO getUser(String id) {
		return userDAO.getUser(id);
	}

	@Override
	public int delete(String id) {
		return userDAO.deleteUser(id);
	}

	@Override
	public void modifyUser(UserDTO userDTO) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", userDTO.getName());
		map.put("id", userDTO.getId());
		map.put("pwd", userDTO.getPwd());
		userDAO.modifyUser(map);
		
	}

	@Override
	public List<UserDTO> search(Map<String, String> map) {
		return userDAO.searchUserList(map);
	}

	@Override
	public boolean checkId(String id) {
		boolean isDup = false;
		UserDTO userDTO = userDAO.getUser(id);
		if(userDTO != null) isDup = true;
		return isDup;
	}


}
