package com.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.member.bean.MemberDTO;

@Transactional
@Repository("memberDAO")
public class MemberDAOMybatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO getUserById(String id) {		
		return sqlSession.selectOne("memberSQL.getUserById", id);
	}

}
