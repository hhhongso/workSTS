package user.dao;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import lombok.Setter;
import user.bean.UserDTO;

@Setter
public class UserDAOImpl implements UserDAO {
	private JdbcTemplate jdbcTemplate; //데이터베이스 연동을 위한 템플릿 클래스: Connection, Statement(PreparedStatement), ResultSet등의 생성과 처리 담당

	@Override
	public void userWrite(UserDTO userDTO) {
		//getConnection(), setPreparedStatement() 안해도 됨... 는 template에서 모두 처리한다. 
		String sql = "insert into usertable values (?, ?, ?)";
		jdbcTemplate.update(sql, userDTO.getName(), userDTO.getId(), userDTO.getPwd()); // insert() 함수는 없음 -> update가 그 역할을 함께함.
		//close() 도 안해도 됨.. template에서 모두 처리한다. 
		
	}

	@Override
	public List<Map<String, Object>> getList() {
		String sql = "select * from usertable";
		List<Map<String, Object>> list = (List<Map<String, Object>>) jdbcTemplate.queryForList(sql);
		return list; 
	}

}
