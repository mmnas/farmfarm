package spring.mvc.farmfarm.dto;

import java.sql.Date;

public class MemDoDTO {
	private String dona_no;
	private int doForm_id;
	private String mem_id;
	private int dona_price;
	private Date dona_date;
	public final String getDona_no() {
		return dona_no;
	}
	public final void setDona_no(String dona_no) {
		this.dona_no = dona_no;
	}
	public final int getDoForm_id() {
		return doForm_id;
	}
	public final void setDoForm_id(int doForm_id) {
		this.doForm_id = doForm_id;
	}
	public final String getMem_id() {
		return mem_id;
	}
	public final void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public final int getDona_price() {
		return dona_price;
	}
	public final void setDona_price(int dona_price) {
		this.dona_price = dona_price;
	}
	public final Date getDona_date() {
		return dona_date;
	}
	public final void setDona_date(Date dona_date) {
		this.dona_date = dona_date;
	}
	
	
	

}
