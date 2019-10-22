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
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/member/login") 
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
	
	@RequestMapping("/member/logout")
	@ResponseBody
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
	@RequestMapping("/member/writeForm")
	public ModelAndView writeForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/writeForm.jsp");
		mav.setViewName("/main/index");
		
		return mav;
	}
	
	@RequestMapping("/member/checkId")
	@ResponseBody
	public String checkId(@RequestParam String id) {
		MemberDTO memberDTO = memberService.checkId(id);
		if(memberDTO == null) return "usable";
		else return "notUsable";
	}
	
	@RequestMapping("/member/checkPostForm")
	public String checkPostForm() {
		return "/member/checkPost";
	}
	
	@RequestMapping("/member/checkPost")
	public ModelAndView checkPost(@RequestBody Map<String, Object> map) {
		List<ZipcodeDTO> list = memberService.checkPost(map);
		for (ZipcodeDTO zipcodeDTO : list) {
			zipcodeDTO.setSigungu(zipcodeDTO.getSigungu() == null ? "" : zipcodeDTO.getSigungu()); 
			zipcodeDTO.setRi(zipcodeDTO.getRi() == null ? "" : zipcodeDTO.getRi()); 
			zipcodeDTO.setBuildingname(zipcodeDTO.getBuildingname() == null ? "" : zipcodeDTO.getBuildingname());
			
			//list.add(zipcodeDTO);				
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping("/member/write")
	@ResponseBody
	public void write(@ModelAttribute MemberDTO memberDTO) {
		memberService.write(memberDTO);
	}
	
}
