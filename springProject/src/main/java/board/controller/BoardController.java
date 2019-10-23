package board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/boardWriteForm")
	public String boardWriteForm(Model model) {
		//ModelAndView mav = new ModelAndView();
		//mav.addObject("display", "/board/boardWriteForm.jsp");
		
		model.addAttribute("display", "/board/boardWriteForm.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/boardWrite")
	public ModelAndView boardWrite(@ModelAttribute BoardDTO boardDTO, HttpSession session, ModelAndView mav) {
		boardDTO.setId((String) session.getAttribute("memId"));
		boardDTO.setName((String) session.getAttribute("memName"));
		boardDTO.setEmail((String) session.getAttribute("memEmail"));
		
		boardService.write(boardDTO);
		
		mav.addObject("display", "/board/boardList.jsp");
		mav.setViewName("/main/index");
		
		return mav; 
	}
	
	@RequestMapping("/boardList")
	public String boardList(Model model) {
		model.addAttribute("display", "/board/boardList.jsp");
		return "/main/index";
	}

	@RequestMapping("/getBoardList")
	public ModelAndView getBoardList(@RequestParam String page, ModelAndView mav) {
		int pg = Integer.parseInt(page);
		int endNum = pg *10; 
		int startNum = endNum -9; 
		
		int totalArticle = boardService.getTotArticle();
		
		
		BoardPaging boardPaging = new BoardPaging();
		boardPaging.setCurrentPage(pg);
		boardPaging.setPageBlock(5);
		boardPaging.setPageSize(10);
		boardPaging.setTotalArticle(totalArticle);
		boardPaging.makePagingHTML();
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("endNum", endNum);
		map.put("startNum", startNum);
		System.out.println("endNum: "+endNum);
		System.out.println("startNum: "+startNum);
		List<BoardDTO> list = boardService.getBoardList(map);
	
		mav.addObject("boardPaging", boardPaging);
		mav.addObject("list", list);

		mav.setViewName("jsonView");
		return mav; 
	}
}
