package user.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Scope("prototype")
@Component
public class UserDTO {
	private String name; 
	private String id; 
	private String pwd; 
	
	public String toString() {
		return name + "\t" + id + "\t" + pwd;
	}

}
