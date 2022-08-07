package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HitchhikeController {
	@RequestMapping(value="/spotHitchhike", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch() {
		return "/spothitch/spotHitchMain";
	}
	@RequestMapping(value="/spotHitchhikedeep", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchdeep() {
		return "/spothitch/spotHitchDeep";
	}
}
