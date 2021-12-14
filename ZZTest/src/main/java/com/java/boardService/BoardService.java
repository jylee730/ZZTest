package com.java.boardService;

import java.util.List;

import com.java.domain.BoardVO;

public interface BoardService {
	
	void insertBoard(BoardVO vo);
	void deleteBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	BoardVO getBoard(BoardVO vo);
	List<BoardVO> getBoardList();
}
