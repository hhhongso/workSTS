package com.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import sample03.ScoreDTO;
import sample03.ScoreImpl;

/* instance: 메모리 할당. 기본형/참조형 */
@Configuration
public class Instance {
	//직접 생성 or xml 에서 생성 whatever, 한쪽으로 몰아두고 받는 게 편하다. 
	//component: 현재 클래스를 메모리에 생성
	//bean: 메소드를 통해 리턴 값을 생성
	//configuration: 해당 클래스는 환경설정임을 명시, 환경설정 클래스를 생성하는 것은 아님
	
	@Bean(name="scoreImpl")
	public ScoreImpl getScoreImpl() {
		return new ScoreImpl();
	}
	
	@Bean
	public ScoreDTO getScoreDTO() {
		return new ScoreDTO();
	}
}
