package com.spot.mate.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class MateRequest {
	
	private List<Double> start = new ArrayList<Double>();
	private List<Double> end0 = new ArrayList<Double>();
	private List<Double> end1 = new ArrayList<Double>();
	private Scanner s=null;
	
	public MateRequest() {
	}
	public MateRequest(List<Double> start , List<Double> end0, List<Double> end1) throws IOException {
		this.start = start;
		this.end0 = end0;
		this.end1 = end1;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> getVer() throws IOException {
		int totalDur = 0;
		List<Double> latlng = new ArrayList<Double>();
		URL url = new URL("https://apis-navi.kakaomobility.com/v1/waypoints/directions");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Content-Type", "application/json");
		httpConn.setRequestProperty("Authorization", "KakaoAK 2b24f06df2137983cc98995c1ddce575");
		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write("{\"origin\" :{ \"x\" : \""+start.get(0)+"\",\n  \"y\" : \""+start.get(1)+"\"\n},  "
				+ " \"destination\" : {\"x\": \""+end1.get(0)+"\",\n \"y\" : \""+end1.get(1)+"\"\n},\n"
				+ " \"waypoints\" : [ \n { \n \"name\" :\"name0\" \n,"
				+ " \"x\" : \""+end0.get(0)+"\",\n"
				+ " \"y\" : \""+end0.get(1)+"\" \n } \n ], \n"
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
        try {
    		map = mapper.readValue(section, Map.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String vn = map.values().toString();
        System.out.println(vn);
        vn = vn.substring(1);
		vn = vn.substring(0, vn.length()-1);
        String[] avn = vn.split("=");
        StringBuffer str2 = new StringBuffer();
//        System.out.println(vn);
        for (int i=0;i<avn.length;i++) {
//        	System.out.println(avn[i]);
        	if (avn[i].contains("vertexes")) {
        		str2.append(avn[i+1]);
        	}
        }
//        System.out.println(str2);
        String z = str2.toString().replace("}, {name", "!");
        z = z.replace("}], [{name", "");
        String[] z2 = z.split("!");
        for (int i=0;i<z2.length;i++) {
        	z2[i] = z2[i].substring(1);
        	z2[i] = z2[i].substring(0, z2[i].length()-1);
//        	System.out.println(z2[i]);
        	for (int j=0;j<z2[i].split(",").length;j++) {
        		latlng.add(Double.parseDouble(z2[i].split(",")[j]));
        	}
        }
//        StringBuffer str3 = new StringBuffer();
//        for (int i=0;i<z2.length;i++) {
////        	System.out.println(z2[i].split(","));
//        	for (int j=0;j<z2[i].split(",").length;j++) {
//        		str3.append(z2[i].split(",")[j]);
//        	}
//        }
//        System.out.println(str3);
//        String c = str3.toString();
//        String[] pp = c.split(" ");
//        for (int i=0;i<pp.length;i++) {
//        	latlng.add(Double.parseDouble(pp[i]));
//        	System.out.println(pp[i]);
//        }
//		JsonElement jRoad = JsonParser.parseString(section);
//		String roads = jRoad.getAsJsonObject().get("roads").toString();
//		roads = roads.substring(1);
//		roads = roads.substring(0, roads.length()-1);
//		String[] arr = roads.split("[{}]");
//
//		List<String> lst = new ArrayList<String>();
//		for(int i=0;i<arr.length;i++) {
//			StringBuffer sb = new StringBuffer();
//			sb.append(arr[i]);
//			sb.insert(0, "{");
//			sb.insert(arr[i].length()+1, "}");
//			lst.add(sb.toString());
//		}
//		for(int i=0;i<lst.size();i++) {
//			if (lst.get(i).equals("{}") || lst.get(i).equals("{,}")) {
//				lst.remove(i);
//			}
//		}
//		for(int i=0;i<lst.size();i++) {
//			JsonElement vertexes = JsonParser.parseString(lst.get(i));
//			String ver = vertexes.getAsJsonObject().get("vertexes").toString();
//			ver = ver.substring(1);
//			ver = ver.substring(0, ver.length()-1);
//			for (int j=0;j<ver.split(",").length;j++) {
//				latlng.add(Double.parseDouble(ver.split(",")[j]));
//			}
//		}
//		
		Map<String, Object> totalInfo= new HashMap<String, Object>();
//		totalInfo.put("totalFare", str);
//		totalInfo.put("totalDur", totalDur);
		totalInfo.put("latlng", latlng);
		return totalInfo;
    }
}

//72번 밑으러
//String summary = jSection.getAsJsonObject().get("summary").toString();
//JsonElement jSummary = JsonParser.parseString(summary);
//String fare = jSummary.getAsJsonObject().get("fare").toString();
//String dur = jSummary.getAsJsonObject().get("duration").toString();
//totalDur = Integer.parseInt(dur);
//
//JsonElement jFare = JsonParser.parseString(fare);
//String taxi = jFare.getAsJsonObject().get("taxi").toString();
//String toll = jFare.getAsJsonObject().get("toll").toString();
//int totalFare = Integer.parseInt(taxi) + Integer.parseInt(toll);
//StringBuffer str = new StringBuffer();
//str.append(totalFare);
//if (str.length() > 6) {
//	if (str.length() == 7) {
//		str.insert(1, ",");
//		str.insert(5, ",");
//	} else if (str.length() == 8) {
//		str.insert(2, ",");
//		str.insert(6, ",");
//	}
//} else if (str.length() <= 6 && str.length() > 3) {
//	if (str.length() == 6) {
//		str.insert(3, ",");
//	} else if (str.length() == 5) {
//		str.insert(2, ",");
//	} else if (str.length() == 4) {
//		str.insert(1, ",");
//	}
//}
//str.append("원");
//System.out.println(section);