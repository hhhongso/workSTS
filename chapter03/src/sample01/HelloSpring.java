package sample01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("cQuickStart.xml");
		MessageBean messageBean = (MessageBean) context.getBean("messageBeanImpl01");
		messageBean.showPrintBefore();		System.out.println();	
		messageBean.viewPrintBefore();		System.out.println();		
		messageBean.display();				System.out.println("=============================");
		
		messageBean.showPrintAfter(); 		System.out.println();
		messageBean.viewPrintAfter("홍길동"); System.out.println();
		messageBean.display();				System.out.println("=============================");
		
		messageBean.showPrint(); 		System.out.println();
		messageBean.viewPrint(); System.out.println();
		messageBean.display();
	}

}
