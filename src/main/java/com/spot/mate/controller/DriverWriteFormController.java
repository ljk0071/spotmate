package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DriverWriteFormController {
	@RequestMapping(value="/carpoolWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String carpool() {
		return "/driver/carpooldriver";
	}
	@RequestMapping(value="/spotHitchWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch1() {
		return "/driver/hitchdriver";
	}
	@RequestMapping(value="/mateWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String mate() {
		return "/driver/matedriver";
	}
	@RequestMapping(value="/driver", method={RequestMethod.GET, RequestMethod.POST})
	public String driveMain() {
		return "/driver/driverMain";
	}
}
