package spring.mvc.farmfarm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class hostController {

	@RequestMapping("ProductManage.ad")
	public String productManage(HttpServletRequest req, Model model) {
		System.out.println("ProductManage.ad");
		
		
		
		return "host/ProductManage";
	}
}
