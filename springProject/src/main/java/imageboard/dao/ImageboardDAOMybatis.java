package imageboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import imageboard.bean.ImageboardDTO;

@Transactional
@Repository("imageboardDAO")
public class ImageboardDAOMybatis implements ImageboardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void writeImageboard(ImageboardDTO imageboardDTO) {
		sqlSession.insert("imageboardSQL.writeImageboard", imageboardDTO);

	}

	@Override
	public List<ImageboardDTO> getImageboardList(Map<String, Integer> map) {
		return sqlSession.selectList("imageboardSQL.getImageboardList", map);
	}

	@Override
	public void imageboardDelete(Map<String, String[]> map) {
		sqlSession.delete("imageboardSQL.imageboardDelete", map);
	
	}

	@Override
	public ImageboardDTO getImageboardView(int seq) {
		return sqlSession.selectOne("imageboardSQL.getImageboardView", seq);
	}
	
	@Override
	public int getImageboardTotArticle() {
		return sqlSession.selectOne("imageboardSQL.getImageboardTotArticle");
	}

}
