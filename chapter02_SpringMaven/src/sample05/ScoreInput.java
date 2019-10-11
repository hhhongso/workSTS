package sample05;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Setter;

@ComponentScan("com.conf")
@Component 
@Scope("prototype")
public class ScoreInput implements Score {
	//@Qualifier("id") -> 같은 타입의 객체가 여러개 일 때, id값으로 이를 구분할 수 있도록 하는 어노테이션.  
	@Qualifier("list")
	@Autowired private List<ScoreDTO> list; //autoWired 시에는 그 주체와 그를 이용하는 클래스를 모두 Component로 잡아주어야 autowired 적용 가능. 
	@Autowired private ScoreDTO scoreDTO;

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
