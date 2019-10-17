package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.SungJukDTO;

//@Controller
@RequestMapping("/sungJuk")
public class SungJukController {
	
	@RequestMapping("/input.do")
	public String input() {
		return "/sungJuk/input";
	}
	
	@RequestMapping(value="/result.do", method=RequestMethod.POST)
										//入					出
	public String result(@ModelAttribute SungJukDTO sungJukDTO, Model model) {
		sungJukDTO.calc();
		model.addAttribute("sungJukDTO", sungJukDTO);		
		return "/sungJuk/result";
	}
}
