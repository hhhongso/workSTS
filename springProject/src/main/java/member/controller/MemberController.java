package member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.service.MemberService;
import member.bean.MemberDTO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/member/writeForm")
	public String writeForm() {
		return "/member/writeForm";
	}
	
	@RequestMapping("/member/login") 
	@ResponseBody
	public ModelAndView login(@RequestBody Map<String, Object> map, HttpSession session) {
		MemberDTO memberDTO = memberService.isLogin(map);
		ModelAndView mav = new ModelAndView();
		if(memberDTO != null) {
			session.setAttribute("memId", memberDTO.getId());			
			session.setAttribute("memName", memberDTO.getName());			
		} 
		
		mav.addObject("memberDTO", memberDTO);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping("/member/logout")
	@ResponseBody
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
}
