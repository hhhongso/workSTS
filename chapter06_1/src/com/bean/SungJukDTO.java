package com.bean;

import lombok.Data;

@Data
public class SungJukDTO {
	private String name; 
	private int kor; 
	private int eng; 
	private int math;
	private int tot; 
	private double avg; 
	
	public void calc() {
		tot = kor + eng + math; 
		avg = tot / 3.0;
	}
}
