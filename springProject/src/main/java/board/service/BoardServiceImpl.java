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
	public List<BoardDTO> getBoardList(Map<String, Object> map) {
		return boardDAO.getBoardList(map);
	}

	@Override
	public int getTotArticle() {
		return boardDAO.getTotArticle();
	}

	@Override
	public BoardDTO getBoardView(int seq) {
		return boardDAO.getBoardView(seq);
	}

	@Override
	public int getSearchTotArticle(Map<String, Object> map) {
		return boardDAO.getSearchTotArticle(map);
	}

	@Override
	public List<BoardDTO> getSearchList(Map<String, Object> map) {
		return boardDAO.getSearchList(map);
	}

	@Override
	public void writeReply(BoardDTO boardDTO) {
		boardDAO.writeReply(boardDTO);
	}

	@Override
	public void deleteBoard(int seq) {
		boardDAO.deleteBoard(seq);
		
	}

}
