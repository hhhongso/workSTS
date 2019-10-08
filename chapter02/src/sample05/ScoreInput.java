package sample05;

import java.util.ArrayList;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ScoreInput implements Score {
	@Autowired private ArrayList<ScoreDTO> list; 

	@Override
	public void execute() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScoreDTO scoreDTO = context.getBean("scoreDTO", ScoreDTO.class);
		Scanner scan = new Scanner(System.in);		
		//ScoreDTO scoreDTO = new ScoreDTO();
		System.out.print("이름 입력: ");
		scoreDTO.setName(scan.next());		
		System.out.print("국어 점수 입력: ");
		scoreDTO.setKor(scan.nextInt());
		System.out.print("영어 점수 입력: ");
		scoreDTO.setEng(scan.nextInt());
		System.out.print("수학 점수 입력: ");
		scoreDTO.setMath(scan.nextInt());
		
		scoreDTO.setTot(scoreDTO.getKor() + scoreDTO.getEng() + scoreDTO.getMath());
		scoreDTO.setAvg(scoreDTO.getTot() / 3.0);
		
		list.add(scoreDTO);
		System.out.println("성적 정보 입력이 완료되었습니다.");
	}

}
