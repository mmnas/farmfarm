package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.farmfarm.dto.AdvantageDTO;
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
	
	//회원 점수 기록횟수
	public int getAdvCnt(String strId);
	//회원 점수목록 가져오기
	public ArrayList<AdvantageDTO> getAdv(Map<String,Object> map);
	
	
	
}
