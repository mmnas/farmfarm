package spring.mvc.farmfarm.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.farmfarm.dto.MemberDTO;
import spring.mvc.farmfarm.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public void LoginPro(HttpServletRequest req, Model model) {
		//3 값받기
		int grade=0;
		String id = req.getParameter("userId");
		String pwd = req.getParameter("userPassword");
		System.out.println("id"+id);
		System.out.println("pwd"+pwd);
		//5 처리
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		grade=dao.idPwdCheck(map);
		
		//6 전송
		if(grade!=0) {//id,pwd 일치할시 id보냄
			req.getSession().setAttribute("userId", id);
			System.out.println("(일치)userId:"+id+"  grade : "+grade);
			model.addAttribute("grade",grade);
		}
		
	}

	@Override
	public void confirmId(HttpServletRequest req, Model model) {
		//3단계 화면값 가져옴
		String strId = req.getParameter("userId");
		int selectCnt=0;
		System.out.println("strId ser"+strId);
		//5 아이디 중복확인
		selectCnt=dao.idCheck(strId);
		
		//6 req,session이용해서 화면에 전달
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("id", strId);
		
	}

	@Override
	public void registerPro(HttpServletRequest req, Model model) {
		MemberDTO dto = new MemberDTO();
		int insertCnt=0;
		//3 화면값
		//도로명or지번주소 + 상세주소 합쳐줌
		//String addr=req.getParameter("addr1")+" "+req.getParameter("addr2");
		
		dto.setMem_id(req.getParameter("userId"));
		dto.setMem_pwd(req.getParameter("userPassword"));
		dto.setMem_name(req.getParameter("userName"));		
		dto.setMem_address(req.getParameter("address"));
		dto.setMem_hp(req.getParameter("hp"));
		dto.setMem_email(req.getParameter("email"));

		//5 처리
		insertCnt=dao.insertMember(dto);
		System.out.println("insertCnt:"+insertCnt);
		//6 전달
		req.setAttribute("insertCnt", insertCnt);
		System.out.println("service");
		
	}

	@Override
	public void deleteMemberPro(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("userId");
		String pwd = req.getParameter("userPassword");
		int selectCnt=0,deleteCnt=0;
		
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		selectCnt=dao.idPwdCheck(map);
		
		if(selectCnt!=0) {
			deleteCnt=dao.deleteMember(id);
			if(deleteCnt!=0) {
				System.out.println("deletecnt:"+deleteCnt);
				model.addAttribute("deleteCnt",deleteCnt);
			}
		}
		
		
	}

}
