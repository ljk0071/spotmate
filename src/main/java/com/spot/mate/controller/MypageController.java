package com.spot.mate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
	
	@RequestMapping(value="/myCouponBuy", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponBuy() {
		return "/mypage/myCouponBuy";
	}
	@RequestMapping(value="/myCouponUse", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponUse() {
		return "/mypage/myCouponUse";
	}
	@RequestMapping(value="/myCouponMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponMain() {
		return "/mypage/myCouponMain";
	}
	@RequestMapping(value="/myDriverForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverForm() {
		return "/mypage/myDriverForm";
	}
	@RequestMapping(value="/myDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverMain() {
		return "/mypage/myDriverForm";
	}
	@RequestMapping(value="/myDriverMain2", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverMain2() {
		return "/mypage/myDriverMain2";
	}
	@RequestMapping(value="/myInfoChk", method={RequestMethod.GET, RequestMethod.POST})
	public String myInfoChk() {
		return "/mypage/myInfoChk";
	}
	@RequestMapping(value="/myPointCharge", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointCharge() {
		return "/mypage/myPointCharge";
	}
	@RequestMapping(value="/myPointMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointMain() {
		return "/mypage/myPointMain";
	}
	@RequestMapping(value="/myPointRefundMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointRefundMain() {
		return "/mypage/myPointRefundMain";
	}
	@RequestMapping(value="/myPointRefundForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointRefundForm() {
		return "/mypage/myPointRefundForm";
	}
	@RequestMapping(value="/myQnaMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myQnaMain() {
		return "/mypage/myQnaMain";
	}
	@RequestMapping(value="/myQnaWriteForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myQnaWriteForm() {
		return "/mypage/myQnaWriteForm";
	}
	@RequestMapping(value="/myReservationDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myReservationDriverMain() {
		return "/mypage/myReservationDriverMain";
	}
	@RequestMapping(value="/myReservationUserMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myReservationUserMain() {
		return "/mypage/myReservationUserMain";
	}
	@RequestMapping(value="/myUsageDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myUsageDriverMain() {
		return "/mypage/myUsageDriverMain";
	}
	@RequestMapping(value="/myUsageUserMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myUsageUserMain() {
		return "/mypage/myUsageUserMain";
	}
	
	
}
