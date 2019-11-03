package com.sample.websocket.dao;

import java.util.List;

import com.sample.websocket.CourseDTO;

public interface CourseDAO {
	List<CourseDTO> getAllCourses();
	CourseDTO getCourseByCode(String courseCode);
	public void plusCourseApplicant(String courseCode);
	

}
