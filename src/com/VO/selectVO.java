package com.VO;

public class selectVO {
	private String tema;
	private String fellow;
	private String spot;
	
	public selectVO(String tema, String fellow, String spot) {
		super();
		this.tema = tema;
		this.fellow = fellow;
		this.spot = spot;
	}
	
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getFellow() {
		return fellow;
	}
	public void setFellow(String fellow) {
		this.fellow = fellow;
	}
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
	}
	
	
	
}
