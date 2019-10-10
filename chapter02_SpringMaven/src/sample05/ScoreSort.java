package sample05;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ScoreSort implements Score {
	@Autowired private ArrayList<ScoreDTO> list; 
	
	@Override
	public void execute() {
		Collections.sort(list);
		for (ScoreDTO scoreDTO : list) {
			System.out.println(scoreDTO.toString());
		}

	}

	

}
