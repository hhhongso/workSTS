package sample03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		Score score = (Score) context.getBean("scoreImpl");
		
		score.calcTot();
		score.calcAvg();
		score.display();
		
		System.out.println("수정 ");
		score.modify();
		score.calcTot();
		score.calcAvg();
		score.display();
	}

}
