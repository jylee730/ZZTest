package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	
	@RequestMapping("/getBoardList.do")
	public void getBoardList() {
		System.out.println("/getBoardList.do 확인");
	}
	
	
	
	@RequestMapping("/test.do")
	public void test() {
		System.out.println("/test.do 확인");
	}
	
}
