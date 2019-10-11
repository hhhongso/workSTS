package sample01;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

//공통 모듈(aspect): 포인트컷에 대하여 실행 
@Component
@Aspect
public class LoggingAdvice {
	@Before("execution(public void sample01.MessageBeanImpl.*PrintBefore(..))")
	public void beforeTrace() {
		System.out.println("before Trace... [공통 모듈]");
	}
	
	@After("execution(public * *.*.*PrintAfter(..))")
	public void afterTrace() {
		System.out.println("after trace... [공통 모듈]");
	}
	
	@Around("execution(public * *.*.*Print(..))")
	public void trace(ProceedingJoinPoint joinPoint) throws Throwable {
		String methodName = joinPoint.getSignature().toShortString();
		System.out.println("methodName: " + methodName);
		
		StopWatch sw = new StopWatch();
		sw.start(methodName);
		System.out.println("호출 전 : " + methodName);
		
		Object ob = joinPoint.proceed(); //핵심모듈 처리
		System.out.println("ob: " + ob);
		sw.stop();
		
		System.out.println("호출 후: " + methodName);
		System.out.println("처리 시간: "+ sw.getTotalTimeMillis()/1000 +"초");
		
	}

}
