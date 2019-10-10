package sample04;

import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Component;

@Component
public class FileOutputter implements Outputter {
	private String filePath="C:/Spring/";
	private String fileName="test.txt"; 

	@Override
	public void output(String message) {
		//파일로 출력.
		System.out.println("output method");
		try {
			FileWriter fileWriter = new FileWriter(filePath+fileName); //문자단위로 처리.
			fileWriter.write(message);
			fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

}
