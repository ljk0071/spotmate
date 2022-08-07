package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MateController {

	@RequestMapping(value = "/mateInfo", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateInfo() {
		return "/mate/mateInfo";
	}

	@RequestMapping(value = "/mateMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateMain() {
		return "/mate/mateMain";
	}

	@RequestMapping(value = "/mateDeep", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateDeep() {
		return "/mate/mateDeep";
	}

}
