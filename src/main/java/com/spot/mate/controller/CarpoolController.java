package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarpoolController {
	@RequestMapping(value = "/spotMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotMain() {
		return "/spotcarpool/spotMain";
	}

	@RequestMapping(value = "/spotCarpool", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotCarpool() {
		return "/spotcarpool/spotCarpool";
	}

	@RequestMapping(value = "/spotCarpoolDeep", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotCarpoolDeep() {
		return "/spotcarpool/spotCarpoolDeep";
	}
}
