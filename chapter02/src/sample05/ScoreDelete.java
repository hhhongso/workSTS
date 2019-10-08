package sample05;

import java.util.ArrayList;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;

public class ScoreDelete implements Score{
	@Autowired private ArrayList<ScoreDTO> list;

	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);
		System.out.print("삭제할 이름 입력: ");
		String name = scan.next();
		
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getName().equals(name)) {
				list.remove(i);
				i--;
			}	
		}
		
	}
}
