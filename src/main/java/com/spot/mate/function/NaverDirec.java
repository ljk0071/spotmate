package com.spot.mate.function;

import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class NaverDirec {

	private int taxi = 0;
	private int tallgate = 0;
	private int fuel = 0;
	private int fare = 0;

	@SuppressWarnings("deprecation")
	private WebDriver setup() {
		System.setProperty("webdriver.chrome.driver", "./chromedriver.exe");
		ChromeOptions options = new ChromeOptions();
		options.addArguments("disable-gpu", "window-size=1280,720", "headless",
				"user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\r\n");
		WebDriver driver = new ChromeDriver(options);
		driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
		driver.get("https://map.naver.com/v5/directions/-/-/-/car?c=14018678.5337212,4268893.5764512,6,0,0,0,dh");
		driver.get("https://map.naver.com/v5/directions/-/-/-/car?c=14161067.1608115,4277190.1618963,7,0,0,0,dh");
		return driver;
	}

	private StringBuffer convertMoney(StringBuffer str) {
		if (str.length() > 6) {
			if (str.length() == 7) {
				str.insert(1, ",");
				str.insert(5, ",");
			} else if (str.length() == 8) {
				str.insert(2, ",");
				str.insert(6, ",");
			}
		} else if (str.length() <= 6 && str.length() > 3) {
			if (str.length() == 6) {
				str.insert(3, ",");
			} else if (str.length() == 5) {
				str.insert(2, ",");
			} else if (str.length() == 4) {
				str.insert(1, ",");
			}
		}
		str.append("원");
		return str;
	}

	private ArrayList<String> capture(WebDriver driver) throws Exception {
//<<<<<<< HEAD
		// 정보 불러와주는 시간 기다림
		Thread.sleep(3000);

//=======
		// 정보 불러오는 시간을 기다려줌
		Thread.sleep(2000);
//>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate.git
		// 경로 검색 후 가져온 비용들을 계산해주고 보기 깔끔하게 해주는 부분 
		// totalFare은 우리가 제시할 금액, benefit은 택시비와의 차이점
		ArrayList<String> arr = new ArrayList<String>();
		arr.add(driver.findElement(By.className("route_summary_box")).getText());
		//지도 접어주는 부분
		// 이 부분은 택시비, 톨비, 연료비를 가져오는 부분인데
		// 일반화를 못 시켜서 일단 제일 안좋은 방법으로 처리해둠 (추후 error가능성 농후)
		if (arr.get(0).split(" ").length == 7) {
			taxi = Integer.parseInt(arr.get(0).split(" ")[3].replaceAll("[,원]", ""));
			fuel = Integer.parseInt(arr.get(0).split(" ")[6].replaceAll("[,원]", ""));
		}else {
			try {
				taxi = Integer.parseInt(arr.get(0).split(" ")[2].replaceAll("[,원]", ""));
				fuel = Integer.parseInt(arr.get(0).split(" ")[5].replaceAll("[,원]", ""));
			} catch (NumberFormatException e) {
				taxi = Integer.parseInt(arr.get(0).split(" ")[3].replaceAll("[,원]", ""));
				tallgate = Integer.parseInt(arr.get(0).split(" ")[5].replaceAll("[,원]", ""));
				fuel = Integer.parseInt(arr.get(0).split(" ")[7].replaceAll("[,원]", ""));
			}
		}
		int sum = (taxi + fuel + tallgate);
		
		StringBuffer totalFare = new StringBuffer();
		if ((int) (sum * 0.3) % 10 == 0) {
			fare = (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ((int) (sum * 0.3) % 10 == j) {
					fare = (int) (sum * 0.3) + (10 - j);
				}
			}
		}
		totalFare.append(fare);
		
		StringBuffer benefit = new StringBuffer();
		if ((sum - (int) (sum * 0.3)) % 10 == 0) {
			fare = sum - (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ( (sum - (int) (sum * 0.3)) % 10 == j) {
					fare = (sum - (int) (sum * 0.3)) + (10 - j);
				}
			}
		}
		benefit.append(fare);
		// 비용 계산 및 표기법 정리 후 리스트에 다시 넣어주는 부분
//		arr.remove(0);
		arr.add(convertMoney(totalFare).toString());
		arr.add(convertMoney(benefit).toString());
		arr.add(driver.getCurrentUrl());
		
		// 스크린샷 캡쳐
		Thread.sleep(3000);
		// 지도가 줌 아웃 되는 시간 기다려줌
		Thread.sleep(2000);
		File file = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);

		// 저장 할 때 동일한 이름이 있는지 체크하는 부분
		int i = 0;
		File copied = new File("./src/main/resources/static/map" + i + ".png");
		while (copied.exists()) {
			i++;
			copied = new File("./src/main/resources/static/map" + i + ".png");
		}
		FileUtils.copyFile(file, copied);

		return arr;
	}

	private void select(WebDriver driver) {
		try {
			// 검색결과 여러개 일 때
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-place[1]/div"))
			.click();
		} catch (NoSuchElementException e) {
			// 검색결과 한 개 일 때
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/directions-search-list/search-list/search-list-contents/perfect-scrollbar/div/div[1]/div/div/div/search-item-address/div"))
			.click();
		}
	}

	public ArrayList<String> stop0(String start, String end) throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.id("directionGoal1")).sendKeys(end);
		driver.findElement(By.id("directionGoal1")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

	public ArrayList<String> stop1(String start, String stop1, String end) throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
				.sendKeys(Keys.RETURN);
		driver.findElement(By.id("directionVia1")).sendKeys(stop1);
		driver.findElement(By.id("directionVia1")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.id("directionGoal2")).sendKeys(end);
		driver.findElement(By.id("directionGoal2")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

	public ArrayList<String> stop2(String start, String stop1, String stop2, String end) throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		ArrayList<String> stopLength = new ArrayList<String>();
		stopLength.add(stop1);
		stopLength.add(stop2);
		for (int i = 0; i < stopLength.size(); i++) {
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
					.sendKeys(Keys.RETURN);
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(stopLength.get(i));
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(Keys.RETURN);
			select(driver);
		}
		driver.findElement(By.id("directionGoal3")).sendKeys(end);
		driver.findElement(By.id("directionGoal3")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

	public ArrayList<String> stop3(String start, String stop1, String stop2, String stop3, String end)
			throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		ArrayList<String> stopLength = new ArrayList<String>();
		stopLength.add(stop1);
		stopLength.add(stop2);
		stopLength.add(stop3);
		for (int i = 0; i < stopLength.size(); i++) {
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
					.sendKeys(Keys.RETURN);
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(stopLength.get(i));
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(Keys.RETURN);
			select(driver);
		}
		driver.findElement(By.id("directionGoal4")).sendKeys(end);
		driver.findElement(By.id("directionGoal4")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

	public ArrayList<String> stop4(String start, String stop1, String stop2, String stop3, String stop4, String end)
			throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		ArrayList<String> stopLength = new ArrayList<String>();
		stopLength.add(stop1);
		stopLength.add(stop2);
		stopLength.add(stop3);
		stopLength.add(stop4);
		for (int i = 0; i < stopLength.size(); i++) {
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
					.sendKeys(Keys.RETURN);
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(stopLength.get(i));
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(Keys.RETURN);
			select(driver);
		}
		driver.findElement(By.id("directionGoal5")).sendKeys(end);
		driver.findElement(By.id("directionGoal5")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[2]/button[3]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

	public ArrayList<String> stop5(String start, String stop1, String stop2, String stop3, String stop4, String stop5,
			String end) throws Exception {
		WebDriver driver = setup();
		driver.findElement(By.id("directionStart0")).sendKeys(start);
		// 키워드 입력 할 때 나오는 추천 리스트들
//		String str1 = driver.findElement(By.xpath("//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div[1]/directions-search/div[1]/directions-search-box[1]/div/directions-search-box-instant-search/div/instant-search-list/div")).getText();
		driver.findElement(By.id("directionStart0")).sendKeys(Keys.RETURN);
		select(driver);
		ArrayList<String> stopLength = new ArrayList<String>();
		stopLength.add(stop1);
		stopLength.add(stop2);
		stopLength.add(stop3);
		stopLength.add(stop4);
		stopLength.add(stop5);
		for (int i = 0; i < stopLength.size(); i++) {
			driver.findElement(By.xpath(
					"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
					.sendKeys(Keys.RETURN);
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(stopLength.get(i));
			driver.findElement(By.id("directionVia" + (i + 1))).sendKeys(Keys.RETURN);
			select(driver);
		}
		driver.findElement(By.id("directionGoal6")).sendKeys(end);
		driver.findElement(By.id("directionGoal6")).sendKeys(Keys.RETURN);
		select(driver);
		driver.findElement(By.xpath(
				"//*[@id=\"container\"]/shrinkable-layout/div/directions-layout/directions-result/div[1]/div/directions-search/div[2]/button[2]"))
				.sendKeys(Keys.RETURN);
		ArrayList<String> arr = capture(driver);
		driver.quit();
		return arr;
	}

}