package com.sample.websocket.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sample.websocket.CourseDTO;

@Transactional
@Repository("courseDAO")
public class CourseDAOImpl implements CourseDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CourseDTO> getAllCourses() {
		return sqlSession.selectList("getAllCourses");
	}

	@Override
	public CourseDTO getCourseByCode(String courseCode) {
		return sqlSession.selectOne("getCourseByCode", courseCode);
	}

	@Override
	public void plusCourseApplicant(String courseCode) {
		sqlSession.update("plusCourseApplicant", courseCode);

	}

}
