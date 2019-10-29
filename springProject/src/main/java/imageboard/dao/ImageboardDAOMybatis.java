package imageboard.dao;

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

}
