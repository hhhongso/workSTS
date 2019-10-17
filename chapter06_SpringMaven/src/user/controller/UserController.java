package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import user.bean.UserDTO;

@Controller
public class UserController {
	@RequestMapping("/user/writeForm")
	public String writeForm() {
		return "/user/writeForm";
	}
	
	@RequestMapping(value="/user/write", method=RequestMethod.POST)
	@ResponseBody 
	// spring은 기본적으로 viewName을 찾아 해당 view로 들어가고자 하는 습성이 있다. (void여도 이를 찾고자 함) 
	// return 해 줄 view 없이, ajax로 기존의 페이지로 복귀하고자 한다면 @ResponseBody 어노테이션을 이용해 viewName이 아닌 일반 문자열로 인식하도록 하여야 한다.    
	public void write(@ModelAttribute UserDTO userDTO) {
		System.out.println("write() 실행");
		System.out.println(userDTO.getName());
		//data 받기: modelAttribute로 해결
		//db 
		//응답
		
	}
}
