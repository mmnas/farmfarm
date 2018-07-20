package spring.mvc.farmfarm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.farmfarm.service.HostService;


@Controller
public class HostController {
	
	@Autowired
	HostService hostService;
	
	
	// EX
    @RequestMapping("Ex")
    public String Ex(HttpServletRequest req, Model model) {
       System.out.println("Ex");
       
       return "host/Ex";
    }
 
   // ************* 관리자 메인 *************
	// 관리자 메인
   @RequestMapping("HostMain.ad")
   public String HostMain(HttpServletRequest req, Model model) {
      System.out.println("HostMain.ad");
      
      return "host/HostMain";
   }
   
   // ************* 펀드 관리 *************
   // 펀드 진행내역
   @RequestMapping("FundList.ad")
   public String FundList(HttpServletRequest req, Model model) {
      System.out.println("FundList.ad");
      
      return "host/FundList";
   }
   
   // 미등록 펀드 내역
   @RequestMapping("NoFundList.ad")
   public String NoFundList(HttpServletRequest req, Model model) {
      System.out.println("NoFundList.ad");
      
      return "host/NoFundList";
   }
   
   // ************* 경매 관리 *************
   // 경매 진행내역
   @RequestMapping("AucList.ad")
   public String AucList(HttpServletRequest req, Model model) {
      System.out.println("AucList.ad");
      
      return "host/AucList";
   }
   
   // 미등록 경매 내역
   @RequestMapping("NoAucList.ad")
   public String NoAucList(HttpServletRequest req, Model model) {
      System.out.println("NoAucList.ad");
      
      return "host/NoAucList";
   }
   
   // ************* 회원 관리 ************* 
   // 일반회원 관리
   @RequestMapping("GuestManage.ad")
   public String GuestManage(HttpServletRequest req, Model model) {
      System.out.println("GuestManage.ad");
      
      hostService.guestManage(req, model);
      
      return "host/GuestManage";
   }
   
   // 파트너 관리
   @RequestMapping("PartnerManage.ad")
   public String PartnerManage(HttpServletRequest req, Model model) {
      System.out.println("PartnerManage.ad");
      
      hostService.partnerManage(req, model);
      
      return "host/PartnerManage";
   }
   
   // ************* 정산 관리 *************
   // 펀드
   @RequestMapping("FundTotal.ad")
   public String FundTotal(HttpServletRequest req, Model model) {
      System.out.println("FundTotal.ad");
      
      return "host/FundTotal";
   }
   
   // 경매
   @RequestMapping("AucTotal.ad")
   public String AucTotal(HttpServletRequest req, Model model) {
      System.out.println("AucTotal.ad");
      
      return "host/AucTotal";
   }
   
   // ************* 게시판 관리 *************
   // 보영추가
   // 공지사항
   @RequestMapping("NoticeList.ad")
   public String NoticeList(HttpServletRequest req, Model model) {
      System.out.println("NoticeList.ad");
      
      return "host/NoticeList";
   }
   
   // 문의 게시판[농부], [회원], 소식 게시판, 요청 게시판 추가해야함
   
   // ************* 기부 *************
   // 기부내역
   @RequestMapping("DonateList.ad")
   public String DonateList(HttpServletRequest req, Model model) {
      System.out.println("DonateList.ad");
      
      return "host/DonateList";
   }
   
   // 기부 업체현황
   @RequestMapping("DonateConList.ad")
   public String DonateConList(HttpServletRequest req, Model model) {
      System.out.println("DonateConList.ad");
      
      return "host/DonateConList";
   }

   // 기부 통계
   @RequestMapping("DonateTotal.ad")
   public String DonateTotal(HttpServletRequest req, Model model) {
      System.out.println("DonateTotal.ad");
      
      return "host/DonateTotal";
   }
   
   // ************* 주말농장 *************
   // 주말농장 관리 
   @RequestMapping("WeekFarmManage.ad")
   public String WeekFarmManage(HttpServletRequest req, Model model) {
      System.out.println("WeekFarmManage.ad");
      
      return "host/WeekFarmManage";
   }
   
   // IoT
   @RequestMapping("IOTManage.ad")
   public String IOTManage(HttpServletRequest req, Model model) {
      System.out.println("IOTManage.ad");
      
      return "host/IOTManage";
   }
   
   
}