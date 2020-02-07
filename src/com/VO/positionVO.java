package com.VO;

public class positionVO {
	private double latitude;//위도
	private double longitude;//경도
	
	
	
	public positionVO(double latitude, double longitude) {
		super();
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	
	public double getLatitude() {
		return latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	
	
	
}
