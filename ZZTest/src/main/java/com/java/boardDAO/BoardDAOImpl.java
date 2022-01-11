package com.java.boardDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBoard(BoardVO vo) {
		System.out.println("BoardDAO >> mybatis");
		mybatis.update("BoardDAO.updateBoard",vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("BoardDAO >> mybatis");
		return mybatis.selectOne("BoardDAO.getBoard",vo); 
	}

	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("BoardDAO >> mybatis");
		return mybatis.selectList("BoardDAO.getBoardList");
	}

}
