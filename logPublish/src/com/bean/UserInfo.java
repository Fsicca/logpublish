package com.bean;

public class UserInfo {
private int id;
private String name;
private String pwd;
private String bir;
private String phone;
private String email;
private String address;
private String imgUrl;
private int sex;
private int idstatus;
public UserInfo() {
	super();
}

public UserInfo(String name, String pwd, String bir, String phone, String email, String address, String imgUrl,
		int sex) {
	super();
	this.name = name;
	this.pwd = pwd;
	this.bir = bir;
	this.phone = phone;
	this.email = email;
	this.address = address;
	this.imgUrl = imgUrl;
	this.sex = sex;
}

public UserInfo(int id, String name, String pwd, String bir, String phone, String email, String address,
		String imgUrl, int sex, int idstatus) {
	super();
	this.id = id;
	this.name = name;
	this.pwd = pwd;
	this.bir = bir;
	this.phone = phone;
	this.email = email;
	this.address = address;
	this.imgUrl = imgUrl;
	this.sex = sex;
	this.idstatus = idstatus;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getBir() {
	return bir;
}
public void setBir(String bir) {
	this.bir = bir;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getImgUrl() {
	return imgUrl;
}
public void setImgUrl(String imgUrl) {
	this.imgUrl = imgUrl;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}
public int getIdstatus() {
	return idstatus;
}
public void setIdstatus(int idstatus) {
	this.idstatus = idstatus;
}
@Override
public String toString() {
	return "UserInfoDaoImpl [id=" + id + ", name=" + name + ", pwd=" + pwd + ", bir=" + bir + ", phone=" + phone
			+ ", email=" + email + ", address=" + address + ", imgUrl=" + imgUrl + ", sex=" + sex + ", idstatus="
			+ idstatus + "]";
}

}
