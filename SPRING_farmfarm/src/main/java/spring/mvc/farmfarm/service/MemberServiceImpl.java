package spring.mvc.farmfarm.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.farmfarm.dto.AdvantageDTO;
import spring.mvc.farmfarm.dto.MemDoDTO;
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
			req.getSession().setAttribute("grade", grade);
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
	
	@Override
	public void UpdateMemberView(HttpServletRequest req, Model model) {
		String id = (String)req.getSession().getAttribute("userId");
		String pwd = req.getParameter("userPassword");
		int selectCnt=0;
		
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		selectCnt=dao.idPwdCheck(map);
		
		if(selectCnt==1) {
			MemberDTO dto = dao.getMemberInfo(id);
			model.addAttribute("dto", dto);	
			System.out.println("dto보냄");
		}
		model.addAttribute("selectCnt", selectCnt);
		
	}
	
	@Override
	public void updateMemberPro(HttpServletRequest req, Model model) {
		String mem_id = (String) req.getSession().getAttribute("userId");
		String mem_pwd = req.getParameter("userPassword");
		String mem_hp=req.getParameter("hp");
		String mem_address=req.getParameter("address");
		String mem_email = req.getParameter("email");		
		int updateCnt=0;
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(mem_id);
		dto.setMem_pwd(mem_pwd);
		dto.setMem_hp(mem_hp);
		dto.setMem_address(mem_address);
		dto.setMem_email(mem_email);
		
		updateCnt=dao.UpdateMember(dto);
		System.out.println("mem_ser_updateCnt:"+updateCnt);
		
		model.addAttribute("updateCnt", updateCnt);
		
	}

	@Override
	public void getAdv(HttpServletRequest req, Model model) {
		String mem_id = (String)req.getSession().getAttribute("userId");
		
		ArrayList<AdvantageDTO> dtos=null;
		dtos=dao.getAdv(mem_id);
		
		model.addAttribute("dtos",dtos);
	}

	@Override
	public void guestDonateList(HttpServletRequest req, Model model) {
		String mem_id = (String)req.getSession().getAttribute("userId");
		
		ArrayList<MemDoDTO> dtos=null;
		dtos=dao.getDonate(mem_id);
		
		model.addAttribute("dots",dtos);
		
	}

	

}
