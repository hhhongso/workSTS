package sample04;

import org.springframework.stereotype.Component;

@Component // 클래스명과 bean id과 같다면(대소문자 차이), bean id 를 생략할 수 있다. 
public class CalcAdd implements Calc {

	@Override
	public void calculate(int x, int y) {
		System.out.println(x + "+" + y + "=" + (x+y));

	}

}
