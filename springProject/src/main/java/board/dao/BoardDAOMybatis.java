package board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;

@Transactional
@Repository("boardDAO")
public class BoardDAOMybatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void write(BoardDTO boardDTO) {
		sqlSession.insert("boardSQL.write", boardDTO);
	}

	@Override
	public List<BoardDTO> getBoardList(Map<String, Object> map) {
		return sqlSession.selectList("boardSQL.getBoardList", map);
	}

	@Override
	public int getTotArticle() {
		return sqlSession.selectOne("boardSQL.getTotArticle");
	}

	@Override
	public BoardDTO getBoardView(int seq) {
		return sqlSession.selectOne("boardSQL.getBoardView", seq);
	}

	@Override
	public int getSearchTotArticle(Map<String, Object> map) {
		return sqlSession.selectOne("boardSQL.getSearchTotArticle", map);
	}

	@Override
	public List<BoardDTO> getSearchList(Map<String, Object> map) {
		return sqlSession.selectList("boardSQL.getSearchList", map);
	}

}
