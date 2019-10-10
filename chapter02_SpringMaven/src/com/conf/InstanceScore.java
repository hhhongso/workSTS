package com.conf;

import java.util.ArrayList;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import sample04.HelloSpring;
import sample04.MessageBeanImpl;
import sample05.ScoreDTO;
import sample05.ScoreDisp;

@Component
public class InstanceScore {

	//sample05
	@Bean(name="list")
	public ArrayList<ScoreDTO> getArrayList(){
		return new ArrayList<ScoreDTO>();
		//왜 List<> 로 잡으면 안되는지,,, 
	}
	
	@Bean(name="scoreDisp") // Bean() 에 name을 명시하지 않으면, 메소드명을 객체명으로 인지한다.
	public ScoreDisp getScoreDisp() {
		return new ScoreDisp();
	}
	
}
