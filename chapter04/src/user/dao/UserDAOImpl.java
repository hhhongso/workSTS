package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

import lombok.Setter;
import user.bean.UserDTO;

//@Setter
//public class UserDAOImpl implements UserDAO {
//	private JdbcTemplate jdbcTemplate; //데이터베이스 연동을 위한 템플릿 클래스: Connection, Statement(PreparedStatement), ResultSet등의 생성과 처리 담당
//
//	@Override
//	public void userWrite(UserDTO userDTO) {
//		//getConnection(), setPreparedStatement() 안해도 됨... 는 template에서 모두 처리한다. 
//		String sql = "insert into usertable values (?, ?, ?)";
//		jdbcTemplate.update(sql, userDTO.getName(), userDTO.getId(), userDTO.getPwd()); // insert() 함수는 없음 -> update가 그 역할을 함께함.
//		//close() 도 안해도 됨.. template에서 모두 처리한다. 
//		
//	}
//}

public class UserDAOImpl extends NamedParameterJdbcDaoSupport implements UserDAO {
	//상속받아 JdbcTemplate, NamedParameterJdbcTemplate 를 사용할 수 있다. 
	
	@Override
	public void userWrite(UserDTO userDTO) {
		//String sql = "insert into usertable values (?, ?, ?)";
		//getJdbcTemplate().update(sql, userDTO.getName(), userDTO.getId(), userDTO.getPwd());
		
		//NamedParameter 사용하기 : column이 많을 경우 매칭하기 위해 사용 (map 이용)
		String sql = "insert into usertable values (:name, :id, :pwd)";
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", userDTO.getName());
		map.put("id", userDTO.getId());
		map.put("pwd", userDTO.getPwd());
		getNamedParameterJdbcTemplate().update(sql, map);
	}

	@Override
	public List<UserDTO> getUserList() {
		String sql = "select * from usertable";
		return getJdbcTemplate().query(sql,	new BeanPropertyRowMapper<UserDTO>(UserDTO.class)); 
		// DTO의 필드명과 DB의 컬럼명이 같다면, sql으로 가져오는 각 행의 값과 USerDTO의 각 필드의 값을 매핑시킬 수 있다. 
	}

	@Override
	public UserDTO getUser(String id) {
		String sql = "select * from usertable where id = ?";
		UserDTO userDTO = null;
		try {
			userDTO = getJdbcTemplate().queryForObject(sql, new BeanPropertyRowMapper<UserDTO>(UserDTO.class), id);
		} catch (EmptyResultDataAccessException e) {
			
		}
		return userDTO;
	}

	@Override
	public void updateUser(Map<String, String> map) {
		String sql = "update usertable set name= :name, pwd= :pwd where id= :id";
		getNamedParameterJdbcTemplate().update(sql, map);
		
	}

	@Override
	public int deleteUser(String id) {
		String sql = "delete from usertable where id = :id";
		return getJdbcTemplate().update(sql, id);
	}
		
}
