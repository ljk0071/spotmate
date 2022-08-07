package com.spot.mate.vo;

public class LatlngVo {

	private double slat;
	private double slng;
	private double elat;
	private double elng;
	
	
	public LatlngVo() {
	}
	
	public LatlngVo(double slat, double slng, double elat, double elng) {
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
	}

	public double getSlat() {
		return slat;
	}

	public void setSlat(double slat) {
		this.slat = slat;
	}

	public double getSlng() {
		return slng;
	}

	public void setSlng(double slng) {
		this.slng = slng;
	}

	public double getElat() {
		return elat;
	}

	public void setElat(double elat) {
		this.elat = elat;
	}

	public double getElng() {
		return elng;
	}

	public void setElng(double elng) {
		this.elng = elng;
	}

	@Override
	public String toString() {
		return "LatlngVo [slat=" + slat + ", slng=" + slng + ", elat=" + elat + ", elng=" + elng + "]";
	}

	
	
	
}
