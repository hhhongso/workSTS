package com.sample.websocket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.websocket.CourseApplicantWebSocketHandler;
import com.sample.websocket.CourseDTO;
import com.sample.websocket.dao.CourseDAO;

@Service("courseService")
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDAO courseDAO;
	@Autowired
	private CourseApplicantWebSocketHandler handler; 
	
	@Override
	public List<CourseDTO> getAllCourses() {
		return courseDAO.getAllCourses();
	}

	@Override
	public CourseDTO updateCourseApplicant(String courseCode) throws Exception {
		courseDAO.plusCourseApplicant(courseCode);
		CourseDTO courseDTO = courseDAO.getCourseByCode(courseCode);
		handler.noticeCourseApplicant(courseDTO);
		return courseDTO;
	}

}
