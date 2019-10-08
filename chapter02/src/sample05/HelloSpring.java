package sample05;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {
//ArrayList 만 new (com.conf). 나머지 *.java 는 setter injection으로 받기 
//전역변수 없음, helloSpring 도 new 하지 말고 !
	
	public void menu() {
		while(true) {
			System.out.println("************************");
			System.out.println("1. 입력");
			System.out.println("2. 출력");
			System.out.println("3. 수정");
			System.out.println("4. 삭제");
			System.out.println("5. 종료");
			System.out.println("************************");
			
			Scanner scan = new Scanner(System.in);
			int choice = scan.nextInt();
			
			ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
			Score score;
			
			if(choice == 1) {
				score= context.getBean("scoreInput", Score.class);
				score.execute();
				
			} else if(choice == 2) {
				score= context.getBean("scoreDisp", Score.class);
				score.execute();
				
			} else if(choice== 3) {
				score= context.getBean("scoreModify", Score.class);
				score.execute();
				
			} else if(choice == 4) {
				score= context.getBean("scoreDelete", Score.class);
				score.execute();
				
			} else if(choice == 5) {
				break;
			}
		}
	}
	
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		HelloSpring helloSpring = (HelloSpring) context.getBean("helloSpring");
		helloSpring.menu();

	}

}
