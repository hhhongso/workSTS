package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.SungJukDTO;

@Controller
@RequestMapping("/sungJuk/")
public class SungJukController {
	
	@RequestMapping("/input.do")
	public String input() {
		return "input";
	}
	
	@RequestMapping(value="/result.do", method=RequestMethod.POST)
	public String result(Model model, @ModelAttribute SungJukDTO sungJukDTO) {
		sungJukDTO.calc();
		model.addAttribute("sungJukDTO", sungJukDTO);		
		return "result";
	}
}
