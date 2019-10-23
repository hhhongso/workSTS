package board.service;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;

public interface BoardService {

	public void write(BoardDTO boardDTO);

	public List<BoardDTO> getBoardList(Map<String, Integer> map);

	public int getTotArticle();

}
