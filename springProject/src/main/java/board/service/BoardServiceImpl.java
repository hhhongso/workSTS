package board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO; 
	
	@Override
	public void write(BoardDTO boardDTO) {
		boardDAO.write(boardDTO);
	}

	@Override
	public List<BoardDTO> getBoardList(Map<String, Integer> map) {
		return boardDAO.getBoardList(map);
	}

	@Override
	public int getTotArticle() {
		return boardDAO.getTotArticle();
	}

}
