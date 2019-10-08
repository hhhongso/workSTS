package sample05;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

public class ScoreDisp implements Score{
	@Autowired private ArrayList<ScoreDTO> list;
	
	@Override
	public void execute() {
		System.out.println("이름 \t 국어 \t 영어 \t 수학 \t 총점 \t 평균");
		for(ScoreDTO scoreDTO : list) {
			System.out.println(scoreDTO.toString());			
		}
		
		
	}

}
