package com.sample.websocket.service;

import java.util.List;

import com.sample.websocket.CourseDTO;

public interface CourseService {
	List<CourseDTO> getAllCourses();
	public CourseDTO updateCourseApplicant(String courseCode) throws Exception;

}
