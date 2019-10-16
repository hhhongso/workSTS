package com.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bean.SumDTO;

import lombok.Setter;

@Controller
@Setter
public class SumController {
	/*
	private ModelAndView modelAndView;
	private SumDTO sumDTO;

	
	@RequestMapping("/input.do")
	public ModelAndView input() {
		modelAndView.setViewName("/sum/input");
		return modelAndView; 
	}
	
	1. @RequestParam() 으로 파라미터 값을 받는다. (=request.getParameter())
	@RequestMapping(value="/result.do", method = RequestMethod.GET)
	public ModelAndView result(@RequestParam("x") int x, @RequestParam("y") int y) {
		sumDTO.setX(x);
		sumDTO.setY(y);
		modelAndView.addObject("sumDTO", sumDTO);
		modelAndView.setViewName("/sum/result");
		return modelAndView; 
	}
	
	2. @RequestParam() - HashMap 으로 key, value로 받는다. (1과 같은 맥락)
	@RequestMapping(value="/result.do", method = RequestMethod.GET)
	public ModelAndView result(ModelAndView modelAndView, @RequestParam HashMap<String, Integer> map) {
		sumDTO.setX(map.get("x"));
		sumDTO.setY(map.get("y"));
		modelAndView.addObject("sumDTO", sumDTO);
		modelAndView.setViewName("/sum/result");
		return modelAndView; 
	}
	*/
	
	/*
	@RequestMapping("/input.do")
	public ModelAndView input(ModelAndView modelAndView) {
		modelAndView.setViewName("/sum/input");
		return modelAndView; 
	} 
	
	*/
	
//	Spring에서, 리턴 타입이 String이면, 이를 viewName으로 인식한다.
//	반대로, viewName이 아닌 단순 문자열로 리턴하고자 한다면, @ResponseBody 어노테이션을 명기하여야 한다. (public @ResponseBody String input() {})
	@RequestMapping("/input.do")
	public String input() {
		return "/sum/input";
	}
	
	/*
	3. 
	@RequestMapping(value="/result.do", method=RequestMethod.GET)
	public ModelAndView result(ModelAndView modelAndView, SumDTO sumDTO) {
		sumDTO.setTot();
		modelAndView.addObject("sumDTO", sumDTO);
		modelAndView.setViewName("/sum/result");
		return modelAndView; 
	}
	 */	
	/*
	@RequestMapping(value="/result.do", method=RequestMethod.GET)
	public ModelAndView result(ModelAndView modelAndView, @RequestParam int x, @RequestParam int y) { //int 형으로 인자 받을 시 numberFormatException
		modelAndView.addObject("x", x);
		modelAndView.addObject("y", y);
		modelAndView.setViewName("/sum/result");
		return modelAndView; 
	}
		
	/*
	@RequestMapping(value="/result.do", method=RequestMethod.GET)
	public ModelAndView result(ModelAndView modelAndView,
							@RequestParam(required=false, defaultValue="0") String x, 
							@RequestParam(required=false, defaultValue="0") String y) { //데이터가 없을 시, 디폴트값 0으로 받기.
		modelAndView.addObject("x", x);
		modelAndView.addObject("y", y);
		modelAndView.setViewName("/sum/result");
		return modelAndView; 
	}
	*/
	
	/*
	@RequestMapping(value="/result.do", method=RequestMethod.GET)
	public String result(ModelMap modelMap, @RequestParam Map<String, String> map) { //데이터 여러개라면, Map으로 받기. Request, Session class도 사용 가능.
		modelMap.put("x", map.get("x"));
		modelMap.put("y", map.get("y"));
		return "/sum/result"; 
	}
	 */
	
	@RequestMapping(value="/result.do", method=RequestMethod.GET)
	public String result(Model model, @ModelAttribute SumDTO sumDTO) { 
		model.addAttribute("sumDTO", sumDTO);
		return "/sum/result"; 
	}
}
