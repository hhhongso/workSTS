package sample01;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


//인터페이스의 모든 추상메소드를 구현한 클래스: 타겟 
@Component("messageBeanImpl01")
public class MessageBeanImpl implements MessageBean {
	private @Value("have a nice day! ^_^") String str; 
	
	@Override
	public void showPrintBefore() {
		System.out.println("showPrintBefore 메세지: " + str); // 핵심모듈
	}

	@Override
	public void viewPrintBefore() {
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("viewPrintBefore 메세지: " + str); // 핵심모듈
	}

	@Override
	public void display() {
		System.out.println("display 메세지: " + str); // 핵심 모듈
		
	}

	@Override
	public void showPrintAfter() {
		System.out.println("showPrintAfter 메세지: " + str);
		
	}

	@Override
	public void viewPrintAfter(String name) {
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("viewprintAfter 메세지: " + name +"님!"+ str);
		
	}

	@Override
	public String showPrint() {
		System.out.println("showPrint 메세지: " + str); // 핵심모듈
		return "이상해씨";
	}

	@Override
	public void viewPrint() {
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("viewprint 메세지: " + str);
		
	}

}
