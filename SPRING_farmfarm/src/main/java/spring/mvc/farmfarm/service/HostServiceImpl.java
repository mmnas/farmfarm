package spring.mvc.farmfarm.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.farmfarm.dto.MemberDTO;
import spring.mvc.farmfarm.dto.PartnerDTO;
import spring.mvc.farmfarm.persistence.HostDAO;

@Service
public class HostServiceImpl implements HostService{

	@Autowired
	HostDAO hostDao;

	//일반회원 관리: guestManage()
	@Override
	public void guestManage(HttpServletRequest req, Model model) {
		//일반회원 리스트
		int pageSize = 10; 		//한페이지당 출력될 글 갯수
		int pageBlock= 3; 		//페이지 블록을 3개씩. 앞뒤를 화살표로 이동 
		
		int cnt =0; 			//글갯수
		int start = 0; 			//현재페이지 시작 글번호
		int end = 0; 			//현재 페이지 마지막 글번호
		int number = 0; 		//출력용 글번호, 번호삭제가 되어도 
		String pageNum = null;  //페이지번호
		int currentPage = 0;	//현재 페이지
		
		//블록당 앞뒤 화살표에 필요한 부분
		int pageCount =0;  		//페이지 갯수
		int startPage =0;   	//시작페이지
		int endPage =0;			//마지막 페이지 
		
		//회원 수 구하기
		cnt = hostDao.getGuestCnt();
		System.out.println("cnt:"+cnt);	//먼저 테이블에 최소 30건 insert, 
		
		pageNum = req.getParameter("pageNum");
		System.out.println("pageNum(페이지번호) : " + pageNum);
		
		if(pageNum == null) {
			pageNum = "1"; //첫페이지를 1페이지로 설정
		}
		//글 30건 기준
		currentPage = Integer.parseInt(pageNum); //현재페이지 : 1
		System.out.println("currentPage(현재페이지)"+currentPage);
		
		//			딱떨어질경우	+ 	나미저의것.  ex) 7 = (30/5) + (1)			
		pageCount =(cnt/pageSize) +(cnt%pageSize > 0? 1 : 0);
		
		// 1 =(1-1) * 5+1 
		start = (currentPage -1) * pageSize +1; //현재페이지 시작번호 1(페이지별)
		
		// 5 = 1 + 5- 1;
		end = start +pageSize -1; //현재페이지 끝번호 5 
		
		System.out.println("start(현재페이지 시작글번호):" +start );
		System.out.println("end(현제페이지 끝글번호):" +end);
		
		if(end > cnt) end = cnt;
		
		//30 = 30 (1 - 1) *5
 		number = cnt - (currentPage -1) * pageSize; //출력용 글번호

 		System.out.println("number(출력용 글번호)"+number);
 		System.out.println("pageSize(한페이지당 출력될 글갯수)"+pageSize);
 		
 		Map<String,Integer> map = new HashMap<String,Integer>();
 		map.put("start", start);
 		map.put("end",end);
 		
 		if(cnt >0 ) {
 			//게시글목록 조회
 			ArrayList<MemberDTO> dtos = hostDao.getGuestList(map);

 			model.addAttribute("dtos", dtos); //큰바구니 게시글 목록 5건.
 		}

 		//1 = (1/3) * 3+1
 		startPage = (currentPage / pageBlock) * pageBlock +1;
 		if(currentPage % pageBlock == 0 ) startPage -= pageBlock;
 		System.out.println("startPage(화살표 시작페이지):"+startPage);
 		
 		//3 = 1+3 -1
 		endPage = startPage +pageBlock -1;
 		if(endPage > pageCount) endPage =pageCount;
 		System.out.println("endPage(화살표 마지막페이지):" +endPage);
 		
 		//6단계. request나 session에 처리결과를 저장 (jsp에 전딜하기 위함)
		model.addAttribute("cnt", cnt); 		 	//리스트 갯수
		model.addAttribute("number", number);		//글번호
		model.addAttribute("pageNum", pageNum);	//페이지번호
		
		if(cnt >0 ) {
			model.addAttribute("startPage", startPage);  		//시작페이지
			model.addAttribute("endPage", endPage); 			//마지막 페이지
			model.addAttribute("pageBlock", pageBlock); 		//출력할 페이지 갯수
			model.addAttribute("pageCount", pageCount); 		// 페이지 갯수
			model.addAttribute("currentPage", currentPage);
		}

	}

	//일반회원 검색: guestSearch()
	@Override
	public void guestSearch(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}

	//일반회원 승인: guestPermit()
	@Override
	public void guestPermit(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}

	//일반회원 삭제: guestDelete()
	@Override
	public void guestDelete(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}

	//어드벤티지 관리: guestAdvManage()
	@Override
	public void guestAdvManage(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}

	//어드벤티지 +: guestAdvPlus()
	@Override
	public void guestAdvPlus(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}

	//어드벤티지 -: guestAdvMinus()
	@Override
	public void guestAdvMinus(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}
	//********파트너 관리
	// 영민
   // 파트너 관리
   //파트너 조회
   @Override
   public void partnerManage(HttpServletRequest req, Model model) {
      // 페이지 출력 관련
      int pageSize = 10;   // 한 페이지당 출력할 글의 개수
      int pageBlock = 3;   // 한 블럭당 페이지의 개수 
      
      int cnt = 0;   // DB에 저장된 총 글의 개수
      int start = 0;   // 현재 페이지의 시작 글 번호
      int end = 0;   // 현재 페이지의 마지막 글 번호
      int number = 0; // 출력용 글 번호
                  //       Ex) 29번이 삭제 되어도 5개의 글이 나오게 해준다.
      String pageNum = null;   // 페이지 번호
      int currentPage = 0;   // 현재 페이지 = 최신 페이지
      
      // 블럭당 앞-뒤 화살표를 클릭했을 때 필요한 기능 
      int pageCount = 0;      // 총 페이지 개수
      int startPage = 0;      // 시작 페이지
      int endPage = 0;      // 마지막 페이지
      
      // 4단계. 다형성 적용, 싱글톤 방식으로 dao객체 생성
      // DAO객체 생성(싱글톤, 다형성 적용)
      //BoardDAO dao = BoardDAOImpl.getInstance();
      
      // 5단계. 글 개수 구하기
      cnt = hostDao.getPartnerCnt();
      
      pageNum = req.getParameter("pageNum");
      
      if(pageNum == null) pageNum = "1";   // 첫 페이지를 1페이지로 설정
      
      // 글이 30건일 때 기준
      currentPage = Integer.parseInt(pageNum); // 현재 페이지 : 1
      
      // 6 = (30 / 5) + ( (30 % 5)>0 1 : 0 --> 0)
      //   --> 6 = (30 / 5) + (0)
      // 6 = (26 / 5) + ( (26 % 5)>0 1 : 0 --> 1)
      //   --> 6 = (26 / 5) + (1)
      // 총 페이지 개수 = (총 글의 개수 / pageSize) + (총 글의 개수가 pageSize의 배수가 아닐 때)나머지
      pageCount = (cnt / pageSize) + ( (cnt % pageSize)>0 ? 1 : 0);
      
      // (currentPage - 1) * pageSize
      //       - pageSize가 5일 경우에는
      //      --> 시작 페이지가 1일 경우 = 0
      //      --> 시작 페이지가 2일 경우 = 5
      //      --> 시작 페이지가 3일 경우 = 10
      //      --> pageSize의 배수만큼 증가한다.
      
      // 1 = (1 - 1) * 5 + 1;
      // 현재 페이지 시작 번호 (각각의 페이지별로 시작 번호)
      start = (currentPage - 1) * pageSize + 1;
      
      // 5 = 1 + 5 - 1;
      // 현재 페이지 마지막 번호 (각각의 페이지별로 마지막 번호)
      end = start + pageSize - 1;
      
      // DB에서의 마지막 번호로 저장된 글이 총 글 개수의 번호보다 클 때,
      // end값을 cnt값으로 설정해준다.
      //       Ex) DB에서 29번 삭제 후 31번 추가 --> cnt = 30
      //         - 화면에서 글 번호는 30으로 보여지고,
      //         - DB에서는 29번 데이터는 존재하지 않고 31번 데이터가 존재한다.
      if(end > cnt) end = cnt;
      
      // 30 = 30 - (1 - 1) * 5
      // 출력용 글 번호
      number = cnt - (currentPage - 1) * pageSize;
      
      // DB에 저장된 글이 최소 1개 이상일 경우
      // 글 목록을 조회하러 DB를 가기 위해 실제 DB작없을 하는 DAO를 호출한다.
      if(cnt > 0) {
         Map<String, Object> map = new HashMap<String, Object>();
         map.put("start", start);
         map.put("end", end);
         
         // 글 목록 조회
         ArrayList<PartnerDTO> dtos = hostDao.getPartnerList(map);
         // 큰 바구니 : 게시글 목록
         //    -> cf)작은 바구니 : 게시글 1건
         model.addAttribute("dtos", dtos);
      }
      
      // 1 = (1 / 3) * 3 + 1;
      // 시작 페이지가 pageBlock의 배수와 다를 경우
      //      --> 처음 페이지는 1이 되어야하며(1페이지부터 시작하므로),
      //      --> 다음 페이지 부터는 pageBlock의 (다음 배수의 값 - 현재 배수의 값) +1이 된다.
      //      Ex) pageBlock = 3일 경우, 3의 배수 3, 6, 9, 12, ...
      //         시작 페이지는 1, 4, 7, 10, ... 이 된다.
      //      Ex) pageBlock = 4일 경우, 4의 배수 4, 8, 12, 16, ...
      //         시작 페이지는 1, 5, 9, 13, ... 이 된다.
      startPage = (currentPage / pageBlock) * pageBlock + 1; // 시작 페이지
      
      // 현재 페이지가 pageBlock의 배수와 같을 경우
      //      --> pageBlock의 (다음 배수의 값 - 현재 배수의 값) +1 - pageBlock이 된다.
      // 현재 페이지가 pageBlock의 배수의 값과 값이 같으므로
      // pageBlock의 이전 배수의 값을 가지는 page가 현재 페이지에 나와주어야한다.
      if(currentPage % pageBlock == 0) startPage -= pageBlock;
      
      // 3 = 1 + 3 - 1;
      // 마지막 페이지는 pageBlock의 배수가 되므로
      // 시작 페이지 공식인 pageBlock의 (다음 배수의 값 - 현재 배수의 값) +1에서 -1을 해준다.
      //       --> 시작 페이지가 pageBlock의 현재 배수보다 1의 값을 더 가지므로
      //      --> 거기에서 1의 값을 빼준다.
      endPage = startPage + pageBlock - 1; // 마지막 페이지
      if(endPage > pageCount) endPage = pageCount;
      
      // 6단계. request나 session에 처리결과를 저장 - jsp로 글 개수 넘겨주기
      model.addAttribute("cnt", cnt);         // 글 개수
      model.addAttribute("number", number);      // 글 번호
      model.addAttribute("pageNum", pageNum);   // 페이지 번호
      
      if(cnt > 0) {
         model.addAttribute("startPage", startPage);   // 시작 페이지
         model.addAttribute("endPage", endPage);      // 마지막 페이지
         model.addAttribute("pageBlock", pageBlock);   // 출력할 페이지 개수
         model.addAttribute("pageCount", pageCount);   // 페이지 개수
         model.addAttribute("currentPage", currentPage);   // 현재 페이지
      }
      
   }

   /*//파트너 검색
   @Override
   public void partnerSearch(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }

   //파트너 승인
   @Override
   public void partnerPermit(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }

   //파트너 삭제
   @Override
   public void partnerDelete(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }

   //어드벤티지 관리
   @Override
   public void partnerAdvManage(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }

   //어드벤티지 +
   @Override
   public void partnerAdvPlus(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }

   //어드벤티지 -
   @Override
   public void partnerAdvMinus(HttpServletRequest req, Model model) {
      // TODO Auto-generated method stub
      
   }*/
}
