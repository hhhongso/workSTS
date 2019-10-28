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
	@Autowired
	private BoardPaging boardPaging;
	
	@RequestMapping("/boardWriteForm")
	public String boardWriteForm(Model model) {
		//ModelAndView mav = new ModelAndView();
		//mav.addObject("display", "/board/boardWriteForm.jsp");
		
		model.addAttribute("display", "/board/boardWriteForm.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/boardWrite")
	public ModelAndView boardWrite(@ModelAttribute BoardDTO boardDTO,
									@RequestParam(required = false, defaultValue="1") String pg, 
									@RequestParam(required = false, defaultValue="0") String pseq, 
									HttpSession session, ModelAndView mav) {
		boardDTO.setId((String) session.getAttribute("memId"));
		boardDTO.setName((String) session.getAttribute("memName"));
		boardDTO.setEmail((String) session.getAttribute("memEmail"));
		
		if(pseq.equals("0")) boardService.write(boardDTO);
		else {
			boardDTO.setPseq(Integer.parseInt(pseq));			
			boardService.writeReply(boardDTO);
		}
		mav.addObject("pg", pg);
		mav.addObject("display", "/board/boardList.jsp");
		mav.setViewName("/main/index");
		
		return mav; 
	}
	
	@RequestMapping("/boardList")
	public String boardList(@RequestParam(required=false, defaultValue="1")String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/board/boardList.jsp");
		return "/main/index";
	}
	
	@RequestMapping("/getBoardList")
	public ModelAndView getBoardList(@RequestParam String pg, ModelAndView mav, HttpSession session) {
		String memId = (String) session.getAttribute("memId");		
		Map<String, Object> map = new HashMap<String, Object>();
		
		setBoardPaging(pg, map);		
		List<BoardDTO> list = boardService.getBoardList(map);
	
		mav.addObject("memId", memId);
		mav.addObject("pg", boardPaging.getCurrentPage());
		mav.addObject("boardPaging", boardPaging);
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav; 
	}
	
	
	@RequestMapping("/boardView")
	public String boardView(@RequestParam String seq, @RequestParam String pg, Model model) {		
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/board/boardView.jsp");
		return "/main/index";
		
	}
	
	@RequestMapping("/getBoardView")
	public ModelAndView getBoardView(@RequestParam String seq, @RequestParam String pg, ModelAndView mav) {
		BoardDTO boardDTO = boardService.getBoardView(Integer.parseInt(seq));
		mav.addObject("pg", pg);
		mav.addObject("boardDTO", boardDTO);
		mav.setViewName("jsonView");
		
		return mav; 
	}
	
	@RequestMapping("/boardSearch")
	public ModelAndView boardSearch(@RequestParam(required=false, defaultValue="1") String pg, @RequestParam Map<String, Object> map, HttpSession session, ModelAndView mav) {
		String memId = (String) session.getAttribute("memId");	
		setBoardPaging(pg, map); //map.get("pg");
		
		List<BoardDTO> list = boardService.getSearchList(map);
		
		mav.addObject("memId", memId);
		mav.addObject("pg", boardPaging.getCurrentPage());
		mav.addObject("boardPaging", boardPaging);
		mav.addObject("list", list);
		mav.addObject("searchOp", map.get("searchOp"));
		mav.addObject("searchVal", map.get("searchVal"));
		mav.setViewName("jsonView");
		return mav;
	}
	
	//페이징 처리 
	public void setBoardPaging(String pg, Map<String, Object> map) {
		int page = Integer.parseInt(pg);
		int endNum = page *10; 
		int startNum = endNum -9; 
		
		int totalArticle;
		if(map.containsKey("searchOp")) totalArticle= boardService.getSearchTotArticle(map);
		else totalArticle = boardService.getTotArticle();
		
		boardPaging.setCurrentPage(page);
		boardPaging.setPageBlock(5);
		boardPaging.setPageSize(10);
		boardPaging.setTotalArticle(totalArticle);
		if(map.containsKey("searchOp")) boardPaging.makeSearchPagingHTML();
		else boardPaging.makePagingHTML();
		
		map.put("endNum", endNum);
		map.put("startNum", startNum);		
		
	}
	
	//ModelAndView: Model과 View를 동시에 설정&리턴 가능. 뷰와 모델을 기술, 뷰 정보를 전달할 필요가 있을 때 사용.  
	//Model, ModelMap: Model에 데이터를 저정 후 view에서 데이터에 접근이 가능. 뷰로 전달할 모델값만 기술.
	@RequestMapping("/boardReplyForm")
	public String boardReplyForm(@RequestParam Map<String, Object> map, Model model) {
		model.addAttribute("pseq",map.get("viewSeq"));
		model.addAttribute("pg", map.get("viewPg"));
		model.addAttribute("display", "/board/boardWriteForm.jsp");
		return "/main/index";
		
	}
	
	@RequestMapping("/boardDelete")
	public ModelAndView boardDelete(@RequestParam String viewSeq, ModelAndView mav) {
		int seq = Integer.parseInt(viewSeq);
		boardService.deleteBoard(seq);
		mav.addObject("pg", "1");
		mav.addObject("display", "/board/boardList.jsp");
		mav.setViewName("/main/index");
		
		return mav; 
		
	}
	
}
