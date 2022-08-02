package com.spot.mate.vo;

public class SearchVo {
	
	private String addr, title;
	private double lat,lng;
	
	public SearchVo() {
	}
	public SearchVo(String addr, double lat, double lng) {
		this.addr = addr;
		this.lat = lat;
		this.lng = lng;
	}
	public SearchVo(String title, String addr, double lat, double lng) {
		this.title = title;
		this.addr = addr;
		this.lat = lat;
		this.lng = lng;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	@Override
	public String toString() {
		return "SearchVo [addr=" + addr + ", title=" + title + ", lat=" + lat + ", lng=" + lng + "]";
	}
}
