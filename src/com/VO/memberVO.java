package com.VO;

public class memberVO {
	private String id;
	private String pwd;
	private String born;
	private String sex;
	private String email;
	private String type= "0";
	public memberVO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	
	
	



	public memberVO(String id, String pwd, String email) {
		
		this.id = id;
		this.pwd = pwd;
		this.email = email;
	}
	
	


	public memberVO(String pwd, String born, String sex, String email) {
		super();
		this.pwd = pwd;
		this.born = born;
		this.sex = sex;
		this.email = email;
	}



	public memberVO(String id, String pwd, String born, String sex, String email) {
		this.id = id;
		this.pwd = pwd;
		this.born = born;
		this.sex = sex;
		this.email = email;
	}
	
	
	

	public memberVO(String id, String pwd, String born, String sex, String email, String type) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.born = born;
		this.sex = sex;
		this.email = email;
		this.type = type;
	}







	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getBorn() {
		return born;
	}
	public void setBorn(String born) {
		this.born = born;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
