package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.boardService.BoardService;

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
	
	
	
	@RequestMapping("/test.do")
	public void test() {
		System.out.println("/test.do 확인");
	}
	
}
