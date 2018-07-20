package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.farmfarm.dto.AdvantageDTO;
import spring.mvc.farmfarm.dto.MemDoDTO;
import spring.mvc.farmfarm.dto.MemberDTO;


public interface MemberDAO {
	//아이디중복확인
	public int idCheck(String strId);
	//id,pwd확인
	public int idPwdCheck(Map<String, String> map);
	//회원가입처리
	public int insertMember(MemberDTO dto);
	//회원탈퇴처리
	public int deleteMember(String strId);
	//회원정보 수정뷰
	public MemberDTO getMemberInfo(String strId);
	//회원정보 수정처리
	public int UpdateMember(MemberDTO dto);
	
	//회원점수 가져오기
	public ArrayList<AdvantageDTO> getAdv(String strId);
	//회원 내 기부내역 가져오기
	public ArrayList<MemDoDTO> getDonate(String strId);
}
