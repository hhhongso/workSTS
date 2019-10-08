package sample01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		MessageBean mb = context.getBean("messageBeanImpl", MessageBean.class);

		mb.sayHello();
		mb.sayHello("수박", 20000);
		mb.sayHello("귤", 7000, 30); // 직접 입력 시 xml의 value 값이 무시된다. 
		
		((AbstractApplicationContext) context).close();
	}

}
