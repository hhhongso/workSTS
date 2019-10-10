package sample04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageBeanImpl implements MessageBean {
	private String name="홍길동"; 
	private String phone="010-1231-1231"; 
	@Autowired private Outputter outputter; 

//	public MessageBeanImpl(String name) {
//		System.out.println("MessageBeanImpl constructor");
//		this.name = name;
//	}
//	
//	public void setPhone(String phone) {
//		System.out.println("setPhone method");
//		this.phone = phone;
//	}
//
	/*
	 * public void setOutputter(Outputter outputter) {
	 * System.out.println("setOutputter method"); this.outputter = outputter; }
	 */
	
	@Override
	public void helloCall() {
		System.out.println("helloCall method");
		outputter.output("이름: " + name + ", 전화번호: " + phone);
		
	}

}
