package com.VO;

public class courseVO {
	private String title;
	private String coment;
	private String image;
	private String link;
	
	
	
	public courseVO(String title, String coment, String image, String link) {
		super();
		this.title = title;
		this.coment = coment;
		this.image = image;
		this.link = link;
	}
	
	
	
	

	public String getTitle() {
		return title;
	}
	public String getComent() {
		return coment;
	}
	public String getImage() {
		return image;
	}
	
	public String getLink() {
		return link;
	}
	
	
}
