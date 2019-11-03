package com.sample.websocket;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class CourseDTO {
	private String courseCode; 
	private String title;
	private String dept; 
	private int quota;
	private int applicant;
	private Date createDate; 
	
	

}
