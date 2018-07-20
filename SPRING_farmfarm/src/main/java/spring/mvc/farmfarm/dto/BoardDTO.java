package spring.mvc.farmfarm.dto;

import java.util.Date;

public class BoardDTO {

	private int boa_id;      // 글 번호(PK) (시퀀스) 
    private String mem_id;  // 회원 아이디(FK) (시퀀스 - delete_0713_001_아이디)
    private String boa_subject; // 글 제목
    private String boa_content;  // 글 내용
    private int boa_readCnt;	    // 조회 수 (Default: 0)
    private Date boa_regDate;    // 글 작성일 (Default: sysdate)
    private String boa_ip;   // 아이피 주소
    private int boa_category;   // 카테고리 (1: 공지사항, 2: 회원 1:1문의, 3: 농부 1:1문의, 4: 농부 소식, 5: 회원 요청, 6: 쪽지)
	
    
        
    
    
    public int getBoa_id() {
		return boa_id;
	}
	public void setBoa_id(int boa_id) {
		this.boa_id = boa_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBoa_subject() {
		return boa_subject;
	}
	public void setBoa_subject(String boa_subject) {
		this.boa_subject = boa_subject;
	}
	public String getBoa_content() {
		return boa_content;
	}
	public void setBoa_content(String boa_content) {
		this.boa_content = boa_content;
	}
	public int getBoa_readCnt() {
		return boa_readCnt;
	}
	public void setBoa_readCnt(int boa_readCnt) {
		this.boa_readCnt = boa_readCnt;
	}
	public Date getBoa_regDate() {
		return boa_regDate;
	}
	public void setBoa_regDate(Date boa_regDate) {
		this.boa_regDate = boa_regDate;
	}
	public String getBoa_ip() {
		return boa_ip;
	}
	public void setBoa_ip(String boa_ip) {
		this.boa_ip = boa_ip;
	}
	public int getBoa_category() {
		return boa_category;
	}
	public void setBoa_category(int boa_category) {
		this.boa_category = boa_category;
	}
    
    
}
