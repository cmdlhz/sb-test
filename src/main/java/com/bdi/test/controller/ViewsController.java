package com.bdi.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewsController {

	@GetMapping("/")
	// 4.x부터 되는 것. 예전부터는 이렇게 썼어야 했음: @RequestMapping(value="/", method=RequestMethod.GET)
	public String home() {
		return "index";
	}
}
