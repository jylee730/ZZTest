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
	
	@RequestMapping(value="/updateBoard.do")
	public String updateBoard(BoardVO vo) {
		boardService.updateBoard(vo);
		return "redirect:/getBoard.do?seq="+vo.getSeq();
	}
	
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(Model model) {
		return "insertBoard";
	}
	
	@RequestMapping(value = "/saveBoard.do")
	public String saveBoard(BoardVO vo) {
		boardService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	@RequestMapping("/test.do")
	public void test() {
		System.out.println("/test.do 확인");
	}
	
}
