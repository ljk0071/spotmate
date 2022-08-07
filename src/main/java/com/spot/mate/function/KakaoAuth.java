package com.spot.mate.function;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spot.mate.service.KakaoAuthService;

@Controller
@RequestMapping(value="/member/*")
public class KakaoAuth {
	
	@Autowired
	private KakaoAuthService kas;

	@RequestMapping(value="/kakaologin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("########" + code);
		
		String access_Token = kas.getAccessToken(code);
		HashMap<String, Object> userInfo = kas.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
        
		return "kakao";
    	}
	
	@RequestMapping("/jskakao")
	public String jskakao() {
		return "index";
	}

}