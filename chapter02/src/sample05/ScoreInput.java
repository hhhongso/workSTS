package sample05;

import java.util.List;
import java.util.Scanner;

import lombok.Setter;

@Setter 
public class ScoreInput implements Score {
	private List<ScoreDTO> list; 
	private ScoreDTO scoreDTO;

	@Override
	public void execute() {		
		Scanner scan = new Scanner(System.in);
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
		System.out.println("총 "+ list.size() + "건의 성적 정보 입력이 완료되었습니다.");
		
	}

}
