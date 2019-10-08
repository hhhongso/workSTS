package sample02;

public class HelloSpring {

	public static void main(String[] args) {
		MessageBean messageBean;
		messageBean = new MessageBeanKo();
		messageBean = new MessageBeanEn(); //모든 부모는 자식 클래스를 참조한다. (다형성) not 1:1
		
		messageBean.sayHello("Spring");

	}

}
