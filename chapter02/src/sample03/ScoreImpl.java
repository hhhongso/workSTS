package sample03;

import java.util.Scanner;

public class ScoreImpl implements Score {
	private ScoreDTO scoreDTO; 
	
	public ScoreImpl(ScoreDTO scoreDTO) {
		this.scoreDTO = scoreDTO;
		
	}
	
	@Override
	public void calcTot() {
		scoreDTO.setTot(scoreDTO.getKor() + scoreDTO.getEng() + scoreDTO.getMath());
		scoreDTO.getTot();
	}

	@Override
	public void calcAvg() {
		scoreDTO.setAvg(scoreDTO.getTot()/3.0);
		scoreDTO.getAvg();
	}

	@Override
	public void display() {
		System.out.println("이름 \t 국어 \t 영어 \t 수학 \t 총점 \t 평균 ");
		System.out.println(scoreDTO);		
	}
	

	@Override
	public void modify() {
		Scanner scan = new Scanner(System.in);
		System.out.print("이름 입력: ");
		scoreDTO.setName(scan.next());		
		System.out.print("국어 점수 입력: ");
		scoreDTO.setKor(scan.nextInt());
		System.out.print("영어 점수 입력: ");
		scoreDTO.setEng(scan.nextInt());
		System.out.print("수학 점수 입력: ");
		scoreDTO.setMath(scan.nextInt());
	

	}

}
