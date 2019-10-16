package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@RequestMapping(value="/hello.do", method=RequestMethod.GET)
	public ModelAndView hello() { //메소드명은 url명을 따라가는 경우가 보편적. 
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", "hello spring!!!");
		//mav.setViewName("hello");
		mav.setViewName("/view/hello"); // 폴더가 많아지니까 xml에서 설정해주기보다는 직접 기재해주는 것이 편리.
		return mav; 
	}
}
