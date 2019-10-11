package user.main;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import user.service.UserService;

public class HelloSpring {
	public void menu(ApplicationContext context) {
		Scanner scan = new Scanner(System.in);
		int choice;
		UserService userService = null;
		
		while(true) {
			System.out.println("************************");
			System.out.println("1. 입력");
			System.out.println("2. 출력");
			System.out.println("3. 수정");
			System.out.println("4. 삭제");
			System.out.println("0. 종료");
			System.out.println("************************");
			
			choice = scan.nextInt();
					
			if(choice == 1) {		 userService= context.getBean("userInsertService", UserService.class);
			} else if(choice == 2) { userService= context.getBean("userSelectService", UserService.class);
			} else if(choice == 3) { userService= context.getBean("userUpdateService", UserService.class);
			} else if(choice == 4) { userService= context.getBean("userDeleteService", UserService.class);
			} else if(choice == 0) { System.out.println("종료합니다. ");
				break;
			}
			userService.execute();
		}
	}
	

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml"); 	//new FileSystemXmlApplicationContext("/src/spring/~~.xml");
		HelloSpring helloSpring = (HelloSpring) context.getBean("helloSpring");
		helloSpring.menu(context);
	}

}
