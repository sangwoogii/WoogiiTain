package membership;

import java.util.Date;

public class memberDTO {

	private String id;
	private String pwd;
	private String name;
	private String email;
	private int address_num;
	private String address;
	private String phone;
	private Date regidate;
	
	
	
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
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getAddress_num() {
		return address_num;
	}
	
	public void setAddress_num(int address_num) {
		this.address_num = address_num;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Date getRegidate() {
		return regidate;
	}
	
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	
	
}
