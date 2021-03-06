package sample05;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {
	//private List<ScoreDTO> list = new ArrayList<ScoreDTO>();
	
	public void menu(ApplicationContext context) {
		Scanner scan = new Scanner(System.in);
		Score score = null;

		while(true) {
			System.out.println("************************");
			System.out.println("1. 입력");
			System.out.println("2. 출력");
			System.out.println("3. 수정");
			System.out.println("4. 삭제");
			System.out.println("5. 총점으로 정렬");
			System.out.println("0. 종료");
			System.out.println("************************");
			
			int choice = scan.nextInt();
					
			if(choice == 1) {	score= context.getBean("scoreInput", Score.class);				
			} else if(choice == 2) {	score= context.getBean("scoreDisp", Score.class);				
			} else if(choice == 3) {	score= context.getBean("scoreModify", Score.class);				
			} else if(choice == 4) {	score= context.getBean("scoreDelete", Score.class);				
			} else if(choice == 5) {	score= context.getBean("scoreSort", Score.class);							
			} else if(choice == 0) {	System.out.println("종료합니다. ");
				break;
			}
			
			score.execute();
		}
		
	}
	
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		HelloSpring helloSpring = (HelloSpring) context.getBean("helloSpring");
		helloSpring.menu(context);
		System.exit(0);

	}

}
