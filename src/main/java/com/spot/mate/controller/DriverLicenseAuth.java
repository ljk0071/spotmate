package com.spot.mate.controller;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class DriverLicenseAuth {
	
		
	private WebDriver setup() {
		System.setProperty("webdriver.chrome.driver", "./chromedriver.exe");
		ChromeOptions options = new ChromeOptions();
		options.addArguments("disable-gpu", "lang=ko_KR", "headless",
				"user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\r\n");
		WebDriver driver = new ChromeDriver(options);
		return driver;
	}

	public String LicenseAuth(String name, String btd, String serial, String encSerial) {
		WebDriver driver = setup();
		driver.get("https://www.safedriving.or.kr/LnrForRtnLicns/LnrForRtnLicnsTruthYn.do");
		String[] arr = serial.split("-");
		switch (arr[0]) {
			case "13" :
				arr[0] = "경기";
				break;
			case "11" :
				arr[0] = "서울";
				break;
			case "28" :
				arr[0] = "경기북부";
				break;
			case "14" :
				arr[0] = "강원";
				break;
			case "15" :
				arr[0] = "충북";
				break;
			case "16" :
				arr[0] = "충남";
				break;
			case "17" :
				arr[0] = "전북";
				break;
			case "18" :
				arr[0] = "전남";
				break;
			case "19" :
				arr[0] = "경북";
				break;
			case "20" :
				arr[0] = "경남";
				break;
			case "21" :
				arr[0] = "제주";
				break;
			case "22" :
				arr[0] = "대구";
				break;
			case "23" :
				arr[0] = "인천";
				break;
			case "24" :
				arr[0] = "광주";
				break;
			case "25" :
				arr[0] = "대전";
				break;
			case "26" :
				arr[0] = "울산";
				break;
			case "12" :
				arr[0] = "부산";
				break;
		}
		
		driver.findElement(By.id("sName")).sendKeys(name);
		driver.findElement(By.id("sJumin1")).sendKeys(btd);
		driver.findElement(By.id("licence01")).sendKeys(arr[0]);
		driver.findElement(By.id("licence02")).sendKeys(arr[1]);
		driver.findElement(By.id("licence03")).sendKeys(arr[2]);
		driver.findElement(By.id("licence04")).sendKeys(arr[3]);
		driver.findElement(By.id("serialnum")).sendKeys(encSerial);
		driver.findElement(By.xpath("//*[@id=\"resultform\"]/div/div[3]/a")).sendKeys(Keys.RETURN);
		String str = driver.findElement(By.className("ul_list")).getText();
		driver.quit();
		if (str.contains("일치하지 않습니다.")|| str.contains("잘못")) {
			return "fail";
		}else {
			return "success";
		}
	}
}