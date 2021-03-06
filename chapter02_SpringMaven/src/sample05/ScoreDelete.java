package sample05;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class ScoreDelete implements Score{
	@Qualifier("list")
	@Autowired private List<ScoreDTO> list;

	@Override
	public void execute() {
		Scanner scan = new Scanner(System.in);
		int sw= 0; 
		System.out.print("삭제할 이름 입력: ");
		String name = scan.next();
		
		
		for (int i = 0; i < list.size(); i++) {

			//1. iterator 사용
			/*
			 * Iterator<ScoreDTO> it = list.iterator(); while(it.hasNext()) {
			 * if(it.next().getName().equals(name)) { it.remove(); } }
			 */
			
			// if문 삭제 후 index 줄이기 
			 if(list.get(i).getName().equals(name)) { 
				 sw =1; 
				 list.remove(i); 
				 i--;
				
			 }
			 	
		}
		if(sw == 0) System.out.println("등록된 이름 정보가 없습니다. ");
		else  System.out.println("해당 학생의 정보가 삭제되었습니다. "); 
		
		
	}
}
