package spring.mvc.farmfarm.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HostService {

	
// ************* 회원 관리 *************
	//일반회원 관리: guestManage()
	public void guestManage(HttpServletRequest req, Model model);
	
	//일반회원 검색: guestSearch()
	public void guestSearch(HttpServletRequest req, Model model);

	//일반회원 승인: guestPermit()
	public void guestPermit(HttpServletRequest req, Model model);

	//일반회원 삭제: guestDelete()
	public void guestDelete(HttpServletRequest req, Model model);

	//어드벤티지 관리: guestAdvManage()
	public void guestAdvManage(HttpServletRequest req, Model model);

	//어드벤티지 +: guestAdvPlus()
	public void guestAdvPlus(HttpServletRequest req, Model model);

	//어드벤티지 -: guestAdvMinus()
	public void guestAdvMinus(HttpServletRequest req, Model model);

	
// ************* 파트너 관리 *************
  // 영민
   // 파트너 관리
   //파트너 조회
   public void partnerManage(HttpServletRequest req, Model model);

   /*//파트너 검색
   public void partnerSearch(HttpServletRequest req, Model model);
   
   //파트너 승인
   public void partnerPermit(HttpServletRequest req, Model model);
   
   //파트너 삭제
   public void partnerDelete(HttpServletRequest req, Model model);

   //어드벤티지 관리
   public void partnerAdvManage(HttpServletRequest req, Model model);

   //어드벤티지 +
   public void partnerAdvPlus(HttpServletRequest req, Model model);
   
   //어드벤티지 -
   public void partnerAdvMinus(HttpServletRequest req, Model model);*/

}
