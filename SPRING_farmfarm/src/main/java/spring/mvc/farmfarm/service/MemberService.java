package spring.mvc.farmfarm.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {
	//로그인처리
	public void LoginPro(HttpServletRequest req, Model model);
	//회원가입 아이디 중복확인
	public void confirmId(HttpServletRequest req, Model model);
	//회원가입 처리
	public void registerPro(HttpServletRequest req, Model model);
	
	//회원수정뷰
	public void UpdateMemberView(HttpServletRequest req, Model model);
	//회원수정처리
	public void updateMemberPro(HttpServletRequest req, Model model);	
	//회원탈퇴처리
	public void deleteMemberPro(HttpServletRequest req, Model model);
	
	//회원점수 가져오기
	public void getAdv(HttpServletRequest req, Model model);
	//회원 기부내역 가져오기
	public void guestDonateList(HttpServletRequest req, Model model);
}
