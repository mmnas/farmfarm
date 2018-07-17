package spring.mvc.farmfarm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class hostController {

	//상품관리
	@RequestMapping("ProductManage.ad")
	public String productManage(HttpServletRequest req, Model model) {
		System.out.println("ProductManage.ad");
		
		return "host/ProductManage";
	}
	
	//펀드목록
	@RequestMapping("FundList.ad")
	public String FundList(HttpServletRequest req, Model model) {
		System.out.println("FundList.ad");
		
		return "host/FundList";
	}
	
	//경매목록
	@RequestMapping("AucList.ad")
	public String AucList(HttpServletRequest req, Model model) {
		System.out.println("AucList.ad");
		
		return "host/AucList";
	}
	
//보영추가
	//공지사항  BoardManage.jsp
	@RequestMapping("BoardManage.ad")
	public String BoardManage(HttpServletRequest req, Model model) {
		System.out.println("BoardManage.ad");
		
		return "host/BoardManage";
	}
	
	//기부내역
	@RequestMapping("DonateList.ad")
	public String DonateList(HttpServletRequest req, Model model) {
		System.out.println("DonateList.ad");
		
		return "host/DonateList";
	}
	
	//기부업체관리
	@RequestMapping("DonateConList.ad")
	public String DonateConList(HttpServletRequest req, Model model) {
		System.out.println("DonateConList.ad");
		
		return "host/DonateConList";
	}

	//통계
	@RequestMapping("DonateTotal.ad")
	public String DonateTotal(HttpServletRequest req, Model model) {
		System.out.println("DonateTotal.ad");
		
		return "host/DonateTotal";
	}
	
	//주말농장 
	@RequestMapping("WeekFarmManage.ad")
	public String WeekFarmManage(HttpServletRequest req, Model model) {
		System.out.println("WeekFarmManage.ad");
		
		return "host/WeekFarmManage";
	}
	
	//주말농장
	@RequestMapping("IOTManage.ad")
	public String IOTManage(HttpServletRequest req, Model model) {
		System.out.println("IOTManage.ad");
		
		return "host/IOTManage";
	}
}
