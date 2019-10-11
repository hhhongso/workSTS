package user.dao;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {
	public void userWrite(UserDTO userDTO);
	public List<Map<String, Object>> getList();

}
