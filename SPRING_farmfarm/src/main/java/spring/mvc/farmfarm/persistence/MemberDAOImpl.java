package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.farmfarm.dto.AdvantageDTO;
import spring.mvc.farmfarm.dto.MemDoDTO;
import spring.mvc.farmfarm.dto.MemberDTO;


@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession ss;
	
	//아이디중복확인
	@Override
	public int idPwdCheck(Map<String, String> map) {
		int selectCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
				
		selectCnt=dao.idPwdCheck(map);
		return selectCnt;
	}

	//id,pwd확인
	@Override
	public int idCheck(String strId) {
		int selectCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		System.out.println("strId dao"+strId);
		selectCnt=dao.idCheck(strId);
		return selectCnt;
	}

	//회원가입처리
	@Override
	public int insertMember(MemberDTO dto) {
		int insertCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		insertCnt=dao.insertMember(dto);
		return insertCnt;
	}

	@Override
	public int deleteMember(String strId) {
		int deleteCnt=0;
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		deleteCnt=dao.deleteMember(strId);
		return deleteCnt;
	}

	@Override
	public MemberDTO getMemberInfo(String strId) {
		MemberDTO dto=null;
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		dto=dao.getMemberInfo(strId);
		return dto;
	}

	@Override
	public int UpdateMember(MemberDTO dto) {
		int updateCnt=0;
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		updateCnt=dao.UpdateMember(dto);
		return updateCnt;
	}

	@Override
	public ArrayList<AdvantageDTO> getAdv(String strId) {
		ArrayList<AdvantageDTO> dtos=null;
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		dtos=dao.getAdv(strId);
		return dtos;
	}

	@Override
	public ArrayList<MemDoDTO> getDonate(String strId) {
		ArrayList<MemDoDTO> dtos=null;
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		dtos=dao.getDonate(strId);		
		return dtos;
	}
	
}
