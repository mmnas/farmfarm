/**
 * 농부 - 사용자 쪽지 상호 교환VO
 * 고장렬
 */
package spring.mvc.farmfarm.dto;

import java.sql.Timestamp;

public class LettersDTO {

	private int letternum; 				// checkbox삭제 기능으로 번호추가
	private String lettersubject; 		// 제목
	private String letterwritter; 		// 작성자 표시(농부)
	private Timestamp letterreg_date; 	// 작성일 표시

	private String lettercontent;		// 작성시 글
	private int letterref;				// 글 최신화 정렬을 위한 기능01
	private int letterref_step;			// 글 최신화 정렬을 위한 기능02
	private int letterref_level;		// 글 최신화 정렬을 위한 기능03
	
	// set 메소드
	public void setLetternum(int letternum) {
		this.letternum = letternum;
	}

	public void setLettersubject(String lettersubject) {
		this.lettersubject = lettersubject;
	}

	public void setLetterwritter(String letterwritter) {
		this.letterwritter = letterwritter;
	}

	public void setLetterreg_date(Timestamp letterreg_date) {
		this.letterreg_date = letterreg_date;
	}

	public void setLettercontent(String lettercontent) {
		this.lettercontent = lettercontent;
	}

	public void setLetterref(int letterref) {
		this.letterref = letterref;
	}

	public void setLetterref_step(int letterref_step) {
		this.letterref_step = letterref_step;
	}

	public void setLetterref_level(int letterref_level) {
		this.letterref_level = letterref_level;
	}

	// get 메소드
	public int getLetternum() {
		return letternum;
	}

	public String getLettersubject() {
		return lettersubject;
	}

	public String getLetterwritter() {
		return letterwritter;
	}

	public Timestamp getLetterreg_date() {
		return letterreg_date;
	}

	public String getLettercontent() {
		return lettercontent;
	}

	public int getLetterref() {
		return letterref;
	}

	public int getLetterref_step() {
		return letterref_step;
	}

	public int getLetterref_level() {
		return letterref_level;
	}

}
