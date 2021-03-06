package imageboard.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import imageboard.bean.ImageboardDTO;
import imageboard.bean.ImageboardPaging;
import imageboard.service.ImageboardService;

@Controller
@RequestMapping("/imageboard")
public class ImageboardController {
	@Autowired
	private ImageboardService imageboardService; 
	@Autowired
	private ImageboardPaging imageboardPaging;
	
	@RequestMapping("/imageboardWriteForm")
	public String imageboardWriteForm(Model model) {
		model.addAttribute("display", "/imageboard/imageboardWriteForm.jsp");
		return "/main/index";
	}
	
	/* 1. <img>가 하나일 경우
	@RequestMapping(value="/imageboardWrite")
	@ResponseBody
	public void imageboardWrite(@ModelAttribute ImageboardDTO imageboardDTO, @RequestParam MultipartFile img1, Model model) {
		
		multipart 파일업로드: 스프링이 제공하는 위치에 기본적으로 저장됨 ((16진수 임시 파일명)*.tmp)
		-> 파일 복사, 사용자가 원하는 위치/파일명 재명명 
		-> 재명명한 파일을 DTO img1 에 저장. 
		=> DB 처리 
		
		String filePath = "C:\\Spring\\workSTS\\springProject\\src\\main\\webapp\\storage"; //사용자가 원하는 위치 
		String fileName = img1.getOriginalFilename(); //사용자가 원하는 파일명(원본 파일명)
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(img1.getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		imageboardDTO.setImage1(fileName);
		imageboardService.writeImageboard(imageboardDTO);
	}
	*/
	
	
	/*
	//2. <img>가 두 개 이상일 경우
	@RequestMapping(value="/imageboardWrite")
	@ResponseBody
	public void imageboardWrite(@ModelAttribute ImageboardDTO imageboardDTO, @RequestParam MultipartFile[] img, Model model) {
		String filePath = "C:\\Spring\\workSTS\\springProject\\src\\main\\webapp\\storage"; //사용자가 원하는 위치 
		String fileName;
		File file; 
		
		//for 문으로 처리하자. 
		if(img[0] != null) {
			fileName = img[0].getOriginalFilename(); //사용자가 원하는 파일명(원본 파일명)
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			imageboardDTO.setImage1(fileName);	
		} else {
			imageboardDTO.setImage1(null);
		}
		
		if(img[1] != null) {
			fileName = img[1].getOriginalFilename(); //사용자가 원하는 파일명(원본 파일명)
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			imageboardDTO.setImage2(fileName);	
		} else {
			imageboardDTO.setImage2(null);
		}
		imageboardService.writeImageboard(imageboardDTO);
	}
	*/
	
	//2. 한 번에 여러 개의 파일을 선택 
	@RequestMapping(value = "/imageboardWrite")
	@ResponseBody
	public void imageboardWrite(@ModelAttribute ImageboardDTO imageboardDTO,
			@RequestParam("img[]") List<MultipartFile> list, Model model) {

		String filePath = "C:\\Spring\\workSTS\\springProject\\src\\main\\webapp\\storage"; // 사용자가 원하는 위치

		for (MultipartFile img : list) {
			String fileName = img.getOriginalFilename(); // 사용자가 원하는 파일명(원본 파일명)
			File file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			imageboardDTO.setImage1(fileName);
			imageboardDTO.setImage2("");
			imageboardService.writeImageboard(imageboardDTO);
		}

	}
	
	@RequestMapping("/imageboardList")
	public String imageboardList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/imageboard/imageboardList.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/getImageboardList")
	public ModelAndView getImageboardList(@RequestParam(required = false, defaultValue = "1") String pg, ModelAndView mav) {
		int endNum = Integer.parseInt(pg) *3;
		int startNum = endNum -2; 
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("endNum", endNum);
		map.put("startNum", startNum);
		
		int totalArticle = imageboardService.getImageboardTotArticle();
		imageboardPaging.setCurrentPage(Integer.parseInt(pg));
		imageboardPaging.setPageBlock(3);
		imageboardPaging.setPageSize(3);
		imageboardPaging.setTotalArticle(totalArticle);
		imageboardPaging.makePagingHTML();
		
		
		List<ImageboardDTO> list = imageboardService.getImageboardList(map);
		mav.addObject("pg", pg);
		mav.addObject("imageboardPaging", imageboardPaging);
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		
		return mav; 
	}
	
	@RequestMapping("/imageboardDelete")
	public String imageboardDelete(@RequestParam String[] cbx, Model model) {
		
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("seqArr", cbx);
		imageboardService.imageboardDelete(map);
		
		model.addAttribute("display", "/imageboard/imageboardList.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/imageboardView")
	public String imageboardView(@RequestParam String seq, @RequestParam String pg, Model model) {
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/imageboard/imageboardView.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/getImageboardView")
	public ModelAndView getImageboardView(@RequestParam String seq, ModelAndView mav) {
		ImageboardDTO imageboardDTO = imageboardService.getImageboardView(Integer.parseInt(seq));
		mav.addObject("imageboardDTO", imageboardDTO);
		mav.setViewName("jsonView");
		return mav;
	}
}



