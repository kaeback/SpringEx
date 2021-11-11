package com.spring.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
		
	}
	
	/*
	 * 포워딩 테스트
	 */
	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public String test1(Model model) {
		String str1 = "test1에서 저장한 문자열";
		model.addAttribute("str1", str1);
		
		return "test1";
	}
	
	/*
	 * 리다이렉트 테스트
	 */
	@RequestMapping(value = "test2", method = RequestMethod.GET)
	public String test2(Model model) {
		String str2 = "test2에서 저장한 문자열";
		model.addAttribute("str2", str2);
		
//		return "test1";
//		return "redirect:test1";
		return "forward:test1";
	}
	
}
