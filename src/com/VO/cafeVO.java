package com.VO;

public class cafeVO {
	private String name;
	private String address;
	private double latitude;//위도
	private double longitude;//경도
	private String weekday_time;
	private String saturday_time;
	private String sunday_time;
	private String hollyday;
	private String parking;
	
	
	public cafeVO(String name, String address, double latitude, double longitude, String weekday_time,
			String saturday_time, String sunday_time, String hollyday, String parking) {
		super();
		this.name = name;
		this.address = address;
		this.latitude = latitude;
		this.longitude = longitude;
		this.weekday_time = weekday_time;
		this.saturday_time = saturday_time;
		this.sunday_time = sunday_time;
		this.hollyday = hollyday;
		this.parking = parking;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setWeekday_time(String weekday_time) {
		this.weekday_time = weekday_time;
	}

	public void setSaturday_time(String saturday_time) {
		this.saturday_time = saturday_time;
	}

	public void setSunday_time(String sunday_time) {
		this.sunday_time = sunday_time;
	}

	public void setHollyday(String hollyday) {
		this.hollyday = hollyday;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public String getWeekday_time() {
		return weekday_time;
	}
	public String getSaturday_time() {
		return saturday_time;
	}
	public String getSunday_time() {
		return sunday_time;
	}
	public String getHollyday() {
		return hollyday;
	}
	public String getParking() {
		return parking;
	}
	
	
	
	
	/*private String hash;*/
	/*private String dog ="#애견";
	private String letro ="#레트로";
	private String family = "#가족";
	private String sens ="#감성";*/
	
}
