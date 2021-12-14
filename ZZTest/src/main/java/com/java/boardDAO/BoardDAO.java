package com.java.boardDAO;

import java.util.List;

import com.java.domain.BoardVO;

public interface BoardDAO {
	
	void insertBoard(BoardVO vo);
	void deleteBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	BoardVO getBoard(BoardVO vo);
	List<BoardVO> getBoardList();
	
	
}
