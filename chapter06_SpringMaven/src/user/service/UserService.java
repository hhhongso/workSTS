package user.service;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface UserService {
	public void write(UserDTO userDTO);
	public List<UserDTO> getList();
	public UserDTO getUser(String id);
	public int delete(String id);
	public void modifyUser(UserDTO userDTO);
	public List<UserDTO> search(Map<String, String> map);
	public boolean checkId(String id);
}
