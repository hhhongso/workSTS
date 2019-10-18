package user.dao;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {
	public void write(UserDTO userDTO);
	public List<UserDTO> getUserList();
	public UserDTO getUser(String id);
	public void modifyUser(Map<String, String> map);
	public int deleteUser(String id);
	public List<UserDTO> searchUserList(Map<String, String> map);
}
