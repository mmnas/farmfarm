package spring.mvc.farmfarm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class hostController {

	@RequestMapping("ProductManage2.ad")
	public String productManage(HttpServletRequest req, Model model) {
		System.out.println("ProductManage.ad");
		
		return "host/ProductManage2";
	}
	
	@RequestMapping("FundList.ad")
	public String FundList(HttpServletRequest req, Model model) {
		System.out.println("FundList.ad");
		
		return "host/FundList";
	}
	
	@RequestMapping("AucList.ad")
	public String AucList(HttpServletRequest req, Model model) {
		System.out.println("AucList.ad");
		
		return "host/AucList";
	}

}
