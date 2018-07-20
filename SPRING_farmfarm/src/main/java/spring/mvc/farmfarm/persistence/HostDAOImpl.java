package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.farmfarm.dto.MemberDTO;
import spring.mvc.farmfarm.dto.PartnerDTO;

@Repository
public class HostDAOImpl implements HostDAO {

	@Autowired
	private SqlSession sqlSession;
	
	// ************* 회원 관리 *************김보영
	//회원의 수
	@Override
	public int getGuestCnt() {
		HostDAO dao = sqlSession.getMapper(HostDAO.class);
		int selectCnt = dao.getGuestCnt();
		
		return selectCnt;
	}

	//회원 목록 조회
	@Override
	public ArrayList<MemberDTO> getGuestList(Map<String, Integer> map) {
		
		//큰바구니를 생성해라
		ArrayList<MemberDTO> dtos = null;
		
		//start와 end 사이에 해당하는 게시글을 읽어서 큰바구니에 담는다.
		HostDAO dao = sqlSession.getMapper(HostDAO.class);
		
		dtos = dao.getGuestList(map);
		
		//큰바구니 리턴
		return dtos;
	}
   // 영민
   // 파트너 관리
   // 총 파트너 수
   @Override
   public int getPartnerCnt() {
      int selectCnt;
      
      HostDAO dao = sqlSession.getMapper(HostDAO.class);
      selectCnt = dao.getPartnerCnt();
      
      return selectCnt;
   }

   // 모든 파트너 조회
   @Override
   public ArrayList<PartnerDTO> getPartnerList(Map<String, Object> map) {
      ArrayList<PartnerDTO> dtos;
      
      HostDAO dao = sqlSession.getMapper(HostDAO.class);
      dtos = dao.getPartnerList(map);
      
      return dtos;
   }

	
	  

}
