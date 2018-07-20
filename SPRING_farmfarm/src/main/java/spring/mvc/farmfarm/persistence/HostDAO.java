package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.farmfarm.dto.MemberDTO;
import spring.mvc.farmfarm.dto.PartnerDTO;


public interface HostDAO {

// ************* 회원 관리 *************김보영
	//회원의 수
	public int getGuestCnt();

	//회원 목록 조회
	public ArrayList<MemberDTO>getGuestList(Map<String,Integer> map);

// 영민
   // 파트너 관리
   // 총 파트너 수
   public int getPartnerCnt();
   
   // 모든 파트너 조회
   public ArrayList<PartnerDTO> getPartnerList(Map<String, Object>map);
}
