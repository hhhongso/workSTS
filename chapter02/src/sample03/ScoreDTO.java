package sample03;

import lombok.Data;

@Data
public class ScoreDTO {
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int tot;
	private double avg;
}
