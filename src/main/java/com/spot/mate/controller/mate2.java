package com.spot.mate.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class mate2 {
	
	@SuppressWarnings("unchecked")
	public static void main(String[] args)throws IOException {
		List<Double> latlng = new ArrayList<Double>();
		URL url = new URL("https://apis-navi.kakaomobility.com/v1/waypoints/directions");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Content-Type", "application/json");
		httpConn.setRequestProperty("Authorization", "KakaoAK 2b24f06df2137983cc98995c1ddce575");
		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write("{\"origin\" :{ \"x\" : \"127.11024293202674\",\n  \"y\" : \"37.394348634049784\"\n},  "
				+ " \"destination\" : {\"x\": \"128.4820176813268\",\n \"y\" : \"35.569365918603765\"\n},\n"
				+ " \"waypoints\" : [ \n { \n \"name\" :\"name0\" \n,"
				+ " \"x\" : \"127.10860518470294\",\n"
				+ " \"y\" : \"37.401999820065534\" \n } \n ], \n"
				+ " \"priority\" : \"RECOMMEND\" ,\n"
				+ " \"car_fuel\" : \"GASOLINE\" ,\n"
				+ " \"car_hipass\" : \"false\" ,\n"
				+ " \"alternatives\" : \"false\" ,\n"
				+ " \"road_details\" : \"false\" \n }");
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();
		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
				? httpConn.getInputStream()
				: httpConn.getErrorStream();
		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
		String result = s.hasNext() ? s.next() : "";
		s.close();
		JsonElement element = JsonParser.parseString(result);
		String info = element.getAsJsonObject().get("routes").toString();
		info = info.substring(1);
		info = info.substring(0, info.length()-1);
		
		JsonElement jSection = JsonParser.parseString(info);
		String section = jSection.getAsJsonObject().get("sections").toString();
		section = section.substring(1);
		section = section.substring(0, section.length()-1);
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, String> map = null;
		map = mapper.readValue(section, Map.class);
        String vn = map.values().toString();
        vn = vn.substring(1);
		vn = vn.substring(0, vn.length()-1);
        String[] avn = vn.split("=");
        StringBuffer str2 = new StringBuffer();
        for (int i=0;i<avn.length;i++) {
        	if (avn[i].contains("vertexes")) {
        		str2.append(avn[i+1]);
        	}
        }
        String z = str2.toString().replace("}, {name", "!");
        z = z.replace("}], [{name", "");
        String[] z2 = z.split("!");
        for (int i=0;i<z2.length;i++) {
        	z2[i] = z2[i].substring(1);
        	z2[i] = z2[i].substring(0, z2[i].length()-1);
        	for (int j=0;j<z2[i].split(",").length;j++) {
        		latlng.add(Double.parseDouble(z2[i].split(",")[j]));
        	}
        }
        for (int i=0;i<latlng.size();i++) {
        	System.out.println(latlng.get(i));
        }
	}
}