package spring.mvc.farmfarm.service;

import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
/**
 * 농부 서비스 인터페이스
 */

public interface FarmerService {

	/**
	 * 장렬 
	 */
	// 받은 쪽지함
	public void LetterList(HttpServletRequest req, Model model);

	
	
	
	
	
	
	/**
	 * 민웅
	 */
	// 상품 등록 - 처리
	public void Auction_ApplyPro(HttpServletRequest req, Model model);
}
