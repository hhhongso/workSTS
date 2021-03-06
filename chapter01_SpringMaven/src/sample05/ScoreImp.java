package sample05;

import java.util.Scanner;

import org.springframework.stereotype.Component;

@Component
public class ScoreImp implements Score {
	private String name; 
	private int kor, eng, math, tot;
	private double avg;
	

	public ScoreImp() {
		Scanner scan = new Scanner(System.in);
		
		System.out.print("이름 입력: ");
		name = scan.next();		
		System.out.print("국어 점수 입력: ");
		kor = scan.nextInt();
		System.out.print("영어 점수 입력: ");
		eng = scan.nextInt();
		System.out.print("수학 점수 입력: ");
		math = scan.nextInt();
	}
	
	@Override
	public void calc() {
		tot = kor + eng + math;
		avg = tot / 3.0;

	}

	@Override
	public void display() {
		System.out.println("이름 \t 국어 \t 영어 \t 수학 \t 총점 \t 평균 ");
		System.out.println(this);		
	}
	
	
	@Override
	public String toString() {
		return name + "\t" + kor + "\t" + eng + "\t" + math + "\t" + tot + "\t" + String.format("%.3f", avg);
		
	}

}
