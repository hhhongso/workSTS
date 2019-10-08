package sample03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		//사용자 클래스의 경우 rename 될 수 있으니, 직접 new 하지 않고 Spring 에게 제어권을 넘김. => 스프링 설정 파일; application Context.xml 을 이용 
		//일반 클래스(ex) Scanner 는 new 하여도 OK.

		//ApplicationContext context = new FileSystemXmlApplicationContext("src/applicationContext.xml"); // context 경로 입력
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml"); // path; 경로는 이미 설정. 파일명만 입력. 
		MessageBean bean = (MessageBean) context.getBean("messageBean"); //부모로 타입 캐스팅 
		bean.sayHello("Spring");
		System.out.println();
		
		//Spring은 기본적으로 하나만 생성: singleTon .. scope="prototype" 을 통해 singleTon 을 깰 수 있음. 
		MessageBean bean2 = (MessageBean) context.getBean("messageBean"); 
		bean2.sayHello("Spring");
		System.out.println();
		
		MessageBean bean3 = (MessageBean) context.getBean("messageBean"); //singleTon 
		bean3.sayHello("Spring");
		System.out.println();

	}

}
