package com.java.boardService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.boardDAO.BoardDAO;
import com.java.domain.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public void insertBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl >> BoardDAO");
		boardDAO.insertBoard(vo);		
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl >> BoardDAO");
		boardDAO.deleteBoard(vo);
		
	}

	@Override
	public void updateBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl >> BoardDAO");
		boardDAO.updateBoard(vo);
		
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl >> BoardDAO");
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("BoardServiceImpl >> BoardDAO");
		return boardDAO.getBoardList();
	}

}
