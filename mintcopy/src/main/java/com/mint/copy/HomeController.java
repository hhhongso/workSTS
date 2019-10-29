package com.mint.copy;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	

	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/view")
	public String view() {
		return "view";
	}
	
	@RequestMapping("/category")
	public String category() {
		return "category";
	}
	
	@RequestMapping("/mypage_orderlist")
	public String mypage_orderlist() {
		return "mypage_orderlist";
	}
	
	@RequestMapping("/mypage_wishlist")
	public String mypage_wishlist() {
		return "mypage_wishlist";
	}
	
	@RequestMapping("/mypage_review")
	public String mypage_review() {
		return "mypage_review";
	}
	
	@RequestMapping("/mypage_emoney")
	public String mypage_emoney() {
		return "mypage_emoney";
	}
	
	@RequestMapping("/mypage_coupon")
	public String mypage_coupon() {
		return "mypage_coupon";
	}
	
	@RequestMapping("/mypage_myinfo")
	public String mypage_myinfo() {
		return "mypage_myinfo";
	}
	
	@RequestMapping("/myinfo")
	public String myinfo() {
		return "myinfo";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
}
