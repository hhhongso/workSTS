package com.conf;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import sample05.ScoreDTO;

@Configuration
public class InstanceScore {
	private static ArrayList<ScoreDTO> list; 

	@Bean
	public ArrayList<ScoreDTO> getArrayList(){
		if(list == null) {
			list = new ArrayList<ScoreDTO>();
		}
		return list;
	}
	
}
