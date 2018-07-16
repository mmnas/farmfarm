package spring.mvc.farmfarm.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.farmfarm.dto.MemberDTO;



@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int idPwdCheck(Map<String, String> map) {
		int selectCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
				
		selectCnt=dao.idPwdCheck(map);
		return selectCnt;
	}

	@Override
	public int idCheck(String strId) {
		int selectCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		System.out.println("strId dao"+strId);
		selectCnt=dao.idCheck(strId);
		return selectCnt;
	}

	@Override
	public int insertMember(MemberDTO dto) {
		int insertCnt=0;		
		MemberDAO dao =ss.getMapper(MemberDAO.class);
		insertCnt=dao.insertMember(dto);
		return insertCnt;
	}
	
}
