package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.boardService.BoardService;
import com.java.domain.BoardVO;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/getBoardList.do")
	public String getBoardList(Model model) {
		System.out.println("/getBoardList.do 확인");
		model.addAttribute("boardList",boardService.getBoardList());
		return "getBoardList";
		
	}
	
	@RequestMapping(value="/getBoard.do")
	public String getBoard(BoardVO vo,Model model) {
		System.out.println("/getBoard.do 호출");
		System.out.println("> 글 번호 : " + vo.getSeq());
		// 리턴받을준비
		model.addAttribute("board",boardService.getBoard(vo));
		return "getBoard";
	}
	
	@RequestMapping("/test.do")
	public void test() {
		System.out.println("/test.do 확인");
	}
	
}
