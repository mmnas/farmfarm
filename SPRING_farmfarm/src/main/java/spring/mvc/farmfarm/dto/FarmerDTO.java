package spring.mvc.farmfarm.dto;

import java.util.Date;

public class FarmerDTO {
   
	private int stock_no;
    private String sInfo_name;
    private String sInfo_detail;
    private int sInfo_kg;
    private int sInfo_ea;
    private int sInfo_price;
    private Date sInfo_regDate; 
    private int sInfo_kind ;
    
	public int getStock_no() {
		return stock_no;
	}
	public void setStock_no(int stock_no) {
		this.stock_no = stock_no;
	}
	public String getsInfo_name() {
		return sInfo_name;
	}
	public void setsInfo_name(String sInfo_name) {
		this.sInfo_name = sInfo_name;
	}
	public String getsInfo_detail() {
		return sInfo_detail;
	}
	public void setsInfo_detail(String sInfo_detail) {
		this.sInfo_detail = sInfo_detail;
	}
	public int getsInfo_kg() {
		return sInfo_kg;
	}
	public void setsInfo_kg(int sInfo_kg) {
		this.sInfo_kg = sInfo_kg;
	}
	public int getsInfo_ea() {
		return sInfo_ea;
	}
	public void setsInfo_ea(int sInfo_ea) {
		this.sInfo_ea = sInfo_ea;
	}
	public int getsInfo_price() {
		return sInfo_price;
	}
	public void setsInfo_price(int sInfo_price) {
		this.sInfo_price = sInfo_price;
	}
	public Date getsInfo_regDate() {
		return sInfo_regDate;
	}
	public void setsInfo_regDate(Date sInfo_regDate) {
		this.sInfo_regDate = sInfo_regDate;
	}
	public int getsInfo_kind() {
		return sInfo_kind;
	}
	public void setsInfo_kind(int sInfo_kind) {
		this.sInfo_kind = sInfo_kind;
	}
   
}