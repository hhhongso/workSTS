package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;

public interface BoardDAO {

	public void write(BoardDTO boardDTO);

	public List<BoardDTO> getBoardList(Map<String, Object> map);

	public int getTotArticle();

	public BoardDTO getBoardView(int seq);

	public int getSearchTotArticle(Map<String, Object> map);

	public List<BoardDTO> getSearchList(Map<String, Object> map);

	public void writeReply(BoardDTO boardDTO);

}
