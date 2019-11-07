package com.security.test;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.member.bean.MemberDTO;
import com.member.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private MemberService memberService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("member/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/login")
	public ModelAndView securityLogin(@RequestParam(value="error", required = false) String error, 
							@RequestParam(value="logout", required = false) String logout,
							@RequestParam Map<String, String> map) {
		System.out.println("hi");
		System.out.println(map.get("id"));
		MemberDTO memberDTO = memberService.getUserById(map.get("id"));
		 
		if(memberDTO == null) {
			throw new UsernameNotFoundException("No user found with username " + memberDTO.getName());
		}
		
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		UserDetails user = new User(map.get("id"), memberDTO.getPwd(), roles);
		ModelAndView mav = new ModelAndView();
		System.out.println(map.get("id") +": "+ memberDTO.getName());
		//로그인 실패 시
		if(error != null) {
			mav.addObject("error", "Invaild id / pwd");
		}
		
		//로그아웃 성공 시
		if(logout != null) {
			mav.addObject("msg", "you've been logged out succesfully.");
		}
		
		mav.setViewName("/loginOk");
		return mav;
	}
}
