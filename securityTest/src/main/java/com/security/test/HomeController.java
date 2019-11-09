package com.security.test;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.member.bean.MemberDTO;
import com.member.service.MemberService;
import com.security.service.UserAuthServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Secured(value = { "" })
@Controller
public class HomeController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private UserAuthServiceImpl userAuthServiceImpl;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
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
	
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping("/loginSecurity")
	@ResponseBody
	public void loginsecurity(@RequestParam String id, @RequestParam String pwd, HttpSession session) {
		System.out.println("hi security");
		MemberDTO memberDTO = (MemberDTO) userAuthServiceImpl.loadUserByUsername(id);
		System.out.println("memberDTO(userDetail) 가져오기");
		if(memberDTO == null) {
			System.out.println("확인되지 않은 사용자입니다. ");
		} else {
			System.out.println("welcome !!! ");
			System.out.println(memberDTO.getId());
			session.setAttribute("memDTO", memberDTO);
		}
		
		
	}
	
	@RequestMapping("/admin/hello")
	public String admin() {
		return "/admin/hello";
	}

}
