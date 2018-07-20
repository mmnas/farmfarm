package spring.mvc.farmfarm.persistence;

import java.util.ArrayList;
import java.util.Map;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.farmfarm.dto.LettersDTO;
import spring.mvc.farmfarm.persistence.FarmDAO;

@Repository
public class FarmDAOImpl implements FarmDAO{

	@Autowired
	private SqlSession SqlSession;
	
	//쪽지 글 갯수 구하기
	@Override
	public int getArtileCnt() {
		FarmDAO dao = SqlSession.getMapper(FarmDAO.class);
		int selectCnt=dao.getArtileCnt();
		return selectCnt;
	}

	
	//쪽지 리스트 목록
	@Override
	public ArrayList<LettersDTO> getArticleList(Map<String, Object> map) {
		ArrayList<LettersDTO> dtos = null;
		
		FarmDAO dao = SqlSession.getMapper(FarmDAO.class);
		dtos = dao.getArticleList(map);
		return dtos;
	}

}
