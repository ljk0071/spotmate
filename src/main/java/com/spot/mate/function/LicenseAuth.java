package com.spot.mate.function;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

public class LicenseAuth {
	public static void main(String[] args) throws IOException {
		URL url = new URL("https://datahub-dev.scraping.co.kr/scrap/docInq/efine/DriversAuthenticity");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Authorization", "Token 0689bebad1ba4295a760fba070e44a797264b7c3");
		httpConn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");

		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write("{\n  \"JUMIN\" : \"ubd5HSHZJ/f/J2mXYYKhlQ==\",\n  \"NAME\" : \"UALCGU4jh3jiV4aqUg==\",\n  \"LNCAREANUMBER\" : \"KU9359bmI4zx/9w==\",\n  \"LNCYEARNUMBER\" : \"WeXvnuzaEIe537Rg==\",\n  \"LNCSERIALNUMBER\" : \"fs0j1KpZ45UYrRhlEA==\",\n  \"LNCNUMBER\" : \"Zk3KMI7SbTwqBHhw==\",\n  \"PWDSERIALNUMBER\" : \"rEkSCB9Rvsls9Fgiw==\"\n}");
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();

		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
				? httpConn.getInputStream()
				: httpConn.getErrorStream();
		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
		String response = s.hasNext() ? s.next() : "";
		System.out.println(response);
		s.close();
	}
}
