package imageboard.bean;

import org.springframework.stereotype.Component;

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
	private String logtime;
}
