package spring.mvc.farmfarm.persistence;
import java.util.ArrayList;
import java.util.Map;
import spring.mvc.farmfarm.dto.LettersDTO;

public interface FarmDAO {
	//쪽지 갯수 구하기
	public int getArtileCnt();
	
	//쪽지 리스트 출력
	public ArrayList<LettersDTO> getArticleList(Map<String,Object> map);
}
