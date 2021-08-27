package com.kh.DAYWORK.collabo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CollaboController {
	
	@RequestMapping("workBox.co")
	public String goWorkBox () {
		
		return "collaboWorkBox";
	}
}
