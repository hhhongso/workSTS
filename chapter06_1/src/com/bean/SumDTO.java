package com.bean;

import lombok.Data;

@Data
public class SumDTO {
	private int x; 
	private int y; 
	private int tot; 
	
	public void setTot() {
		tot = x+y; 
	}
}
