package user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import user.bean.UserDTO;
import user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/user/writeForm")
	public String writeForm() {
		return "/user/writeForm";
	}
	
	@RequestMapping(value="/user/write", method=RequestMethod.POST)
	@ResponseBody 
	// spring은 기본적으로 viewName을 찾아 해당 view로 들어가고자 하는 습성이 있다. (void여도 이를 찾고자 함) 
	// return 해 줄 view 없이, ajax로 기존의 페이지로 복귀하고자 한다면 @ResponseBody 어노테이션을 이용해 viewName이 아닌 일반 문자열로 인식하도록 하여야 한다.    
	public void write(@ModelAttribute UserDTO userDTO) {
		//data 받기: modelAttribute로 해결
		//db 
		userService.write(userDTO);
		//응답: ajax로 해결
		
	}
	
	@RequestMapping(value="/user/list")
	public String list() {
		return "/user/list";
	}
	
	@RequestMapping(value="/user/getList", method=RequestMethod.POST)
	public ModelAndView getList() {
		List<UserDTO> list = userService.getList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping("/user/getUser")
	public void getUser() {
		
	}
	
	@RequestMapping("/user/modify")
	public String modify() {
		return "/user/modify";
	}
	
	@RequestMapping("/user/delete")
	public void delete(String id) {
		userService.delete(id);
	}
}
