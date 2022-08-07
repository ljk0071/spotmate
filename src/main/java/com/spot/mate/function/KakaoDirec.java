package com.spot.mate.function;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class KakaoDirec {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // 드라이버 ID
	public static final String WEB_DRIVER_PATH = "./chromedriver.exe"; // 드라이버 경로



	public static void main(String[] args) throws InterruptedException, IOException {
		
		ProtectInfo pI = new ProtectInfo();

		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		
		ChromeOptions options = new ChromeOptions();
		options.addArguments("disable-gpu");
		options.addArguments("lang=ko_KR");
		options.addArguments("headless");
		options.addArguments("user-agent=Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
		
		WebDriver driver = new ChromeDriver(options);
		driver.get("https://map.kakao.com/");
		
		driver.findElement(By.xpath("//*[@id=\'search.tab2\']/a")).sendKeys(Keys.RETURN);
//		driver.findElement(By.id("dimmedLayer")).click();
		driver.findElement(By.id("info.route.waypointSuggest.input0")).sendKeys("강릉");
		driver.findElement(By.id("info.route.waypointSuggest.input0")).sendKeys(Keys.RETURN);
		Thread.sleep(1000);
		driver.findElement(By.id("info.route.waypointSuggest.input1")).sendKeys("당진");
		driver.findElement(By.id("info.route.waypointSuggest.input1")).sendKeys(Keys.RETURN);
		Thread.sleep(1000);
		//경유지 추가
//		driver.findElement(By.id("info.route.searchBox.toggleVia")).sendKeys(Keys.RETURN);
		driver.findElement(By.id("cartab")).sendKeys(Keys.RETURN);
		Thread.sleep(1500);
		String str = driver.findElement(By.className("contents")).getText();
		driver.quit();
		System.out.println(str);
		String str1 = pI.encryptData(str);
		System.out.println(str1);
		String str2 = pI.decryptData(str1);
		System.out.println(str2);

	}

}
