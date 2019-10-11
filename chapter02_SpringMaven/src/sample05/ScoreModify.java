package sample05;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class ScoreModify implements Score{
	@Qualifier("list")
	@Autowired private List<ScoreDTO> list;
	
	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);		
		System.out.print("수정할 이름 입력: ");
		String name = scan.next();
		int sw=0; 
		for (ScoreDTO scoreDTO : list) {
			if (scoreDTO.getName().equals(name)) {
				sw =1; 
				System.out.print("국어 점수 입력: ");
				scoreDTO.setKor(scan.nextInt());
				System.out.print("영어 점수 입력: ");
				scoreDTO.setEng(scan.nextInt());
				System.out.print("수학 점수 입력: ");
				scoreDTO.setMath(scan.nextInt());
				scoreDTO.setTot(scoreDTO.getKor() + scoreDTO.getEng() + scoreDTO.getMath());
				scoreDTO.setAvg(scoreDTO.getTot() / 3.0);
			}
		}
		
		if(sw == 0) System.out.println("등록된 이름 정보가 없습니다. ");
		else System.out.println("성적 정보가 수정되었습니다. ");
		

	}

}
