package sample04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpring {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		Calc calc = (Calc) context.getBean("calcAdd");
		calc.calculate(25, 36);
		
		calc = context.getBean("calcMul", Calc.class); // casting 되는 클래스를 파라미터 값으로 명시할 수도 있음. 
		calc.calculate(25, 36);
		
		((AbstractApplicationContext) context).close();
	}

}
