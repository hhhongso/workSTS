package member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.service.MemberService;
import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/login") 
	@ResponseBody
	public ModelAndView login(@RequestBody Map<String, Object> map, HttpSession session) {
		MemberDTO memberDTO = memberService.isLogin(map);
		ModelAndView mav = new ModelAndView();
		if(memberDTO != null) {
			session.setAttribute("memId", memberDTO.getId());			
			session.setAttribute("memName", memberDTO.getName());			
			session.setAttribute("memEmail", memberDTO.getEmail1()+"@"+memberDTO.getEmail2());			
		} 
		
		mav.addObject("memberDTO", memberDTO);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping("/logout")
	//@ResponseBody : forward 방식이 아니라, redirect 방식으로 /main/index로 이동. 
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:/main/index");
	}
	
	@RequestMapping("/writeForm")
	public ModelAndView writeForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/writeForm.jsp");
		mav.setViewName("/main/index");
		
		return mav;
	}
	
	@RequestMapping("/checkId")
	@ResponseBody
	public String checkId(@RequestParam String id) {
		MemberDTO memberDTO = memberService.checkId(id);
		if(memberDTO == null) return "usable";
		else return "notUsable";
	}
	
	@RequestMapping("/checkPostForm")
	public String checkPostForm() {
		return "/member/checkPost";
	}
	
	@RequestMapping("/checkPost") //serialize() 하여 데이터 보낼 시, @RequestParam Map 으로도 가능. 단, JSON 형식으로 데이터를 보낸다면 반드시 @requestbody 를 통해 받아야 한다.
	public ModelAndView checkPost(@RequestBody Map<String, Object> map) {   
		List<ZipcodeDTO> list = memberService.checkPost(map);
		for (ZipcodeDTO zipcodeDTO : list) {
			zipcodeDTO.setSigungu(zipcodeDTO.getSigungu() == null ? "" : zipcodeDTO.getSigungu()); 
			zipcodeDTO.setRi(zipcodeDTO.getRi() == null ? "" : zipcodeDTO.getRi()); 
			zipcodeDTO.setBuildingname(zipcodeDTO.getBuildingname() == null ? "" : zipcodeDTO.getBuildingname());
						
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping("/write")
	@ResponseBody
	public void write(@ModelAttribute MemberDTO memberDTO) {
		memberService.write(memberDTO);
		// ajax가 아니라 submit() 으로 바로 보낸다면  
		//model.addAttribute("display","/member/write.jsp");
		//return "/main/index";
	}
	
}
