package imageboard.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;

import lombok.Data;

@Data
@Component
public class ImageboardDTO {
	private int seq;
	private String imageId;
	private String imageName;
	private int imagePrice;
	private int imageQty; 
	private String imageContent;
	private String image1; // DTO로 담는 것이 아니라, multipart fileUpload 시킴.
	private String image2; 
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "YYYY-MM-DD")
	private Date logtime;
}
