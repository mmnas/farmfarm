package spring.mvc.farmfarm.persistence;

import java.util.Map;

import spring.mvc.farmfarm.dto.MemberDTO;


public interface MemberDAO {
	//아이디중복확인
	public int idCheck(String strId);
	//id,pwd확인
	public int idPwdCheck(Map<String, String> map);
	//회원가입처리
	public int insertMember(MemberDTO dto);
}
