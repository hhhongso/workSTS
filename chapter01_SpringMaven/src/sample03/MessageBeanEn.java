package sample03;

import org.springframework.stereotype.Component;

//@Component("messageBean")
public class MessageBeanEn implements MessageBean{

	@Override
	public void sayHello(String name) {
		System.out.println("Hello~ " + name);
		
	}

}
