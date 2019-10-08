package sample05;

import java.util.ArrayList;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;

public class ScoreModify implements Score{
	@Autowired private ArrayList<ScoreDTO> list;
	
	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);
		System.out.print("수정할 이름 입력: ");
		String name = scan.next();
		
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getName().equals(name)) {
				System.out.print("국어 점수 입력: ");
				list.get(i).setKor(scan.nextInt());
				System.out.print("영어 점수 입력: ");
				list.get(i).setEng(scan.nextInt());
				System.out.print("수학 점수 입력: ");
				list.get(i).setMath(scan.nextInt());
				list.get(i).setTot(list.get(i).getKor() + list.get(i).getEng() + list.get(i).getMath());
				list.get(i).setAvg(list.get(i).getTot() / 3.0);
				list.add(list.get(i));
				return;
			}	
		}

	}

}
