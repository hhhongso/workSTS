package sample01;

public interface MessageBean {
	public void showPrintBefore(); // 포인트 컷
	public void viewPrintBefore(); // 포인트 컷
	public void display();
	public void showPrintAfter();
	public void viewPrintAfter(String name);
	public String showPrint();
	public void viewPrint();
	
	/* 인터페이스에 제공하는 모든 메소드는 조인 포인트, 
	 * 그 중 공통모듈로 사용되는 메소드는 포인트 컷.
	 */ 
	
}
