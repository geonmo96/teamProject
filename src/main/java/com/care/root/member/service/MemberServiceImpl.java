package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

<<<<<<< HEAD
=======
import com.care.root.mail.service.MailService;
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
import com.care.root.member.dao.MemberDAO;
import com.care.root.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
<<<<<<< HEAD
	@Autowired
	MemberDAO dao;
=======
	@Autowired MemberDAO dao;
	@Autowired MailService ms;
	@Autowired NaverSmsServiceImpl nss;
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
	
	@Override
	public void join(MemberDTO dto) {
		dao.join(dto);
	}
	@Override
	public String dbIdCheck(String id) {
		String dbId = dao.dbIdCheck(id);
<<<<<<< HEAD
		if(dbId == null) {
			return "�쉶�썝媛��엯 媛��뒫";
		} else {
			return "以묐났�맂 �븘�씠�뵒�엯�땲�떎";
=======
		if(id.equals("")) {
			return "아이디를 입력하세요";
		} else if(dbId == null) {
			return "회원가입 가능";
		} else {
			return "중복된 아이디입니다";
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
		}
	}
	@Override
	public String login(MemberDTO dto, Model model, HttpServletRequest request) {
		MemberDTO dbDto = dao.login(dto);
		if(dbDto == null) {
<<<<<<< HEAD
			model.addAttribute("message", "�븘�씠�뵒媛� �뾾�뒿�땲�떎.");
			return "/member/loginForm";
		}else if(!dbDto.getPw().equals(dto.getPw())) {
			model.addAttribute("message", "鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�뒿�땲�떎");
			return "/member/loginForm";
		}else {
			//TODO 硫붿씤�럹�씠吏� �닔�젙 �삁�젙
=======
			model.addAttribute("message", "아이디가 없습니다.");
			return "/member/loginForm";
		}else if(!dbDto.getPw().equals(dto.getPw())) {
			model.addAttribute("message", "비밀번호가 일치하지 않습니다");
			return "/member/loginForm";
		}else {
			//TODO 메인페이지 수정 예정
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
			HttpSession session = request.getSession();
			session.setAttribute("USER", dbDto.getId());
			return "main";
		}
	}
<<<<<<< HEAD
=======
	@Override
	public void logout(HttpServletRequest request) {
		HttpSession session = (HttpSession) request.getSession();
		session.removeAttribute("USER");
	}
	@Override
	public void checkEmail(String name, String email, Model model) {
		String dbName = null;
		dbName = dao.selectNameToEmail(email);
		model.addAttribute("toDo", "findId");
		if(dbName == null) {
			model.addAttribute("message", "입력하신 이메일은 없는 이메일입니다");
			model.addAttribute("code", 0);
		} else if(!dbName.equals(name)) {
			model.addAttribute("message", "이메일과 이름이 일치하지 않습니다");
			model.addAttribute("code", 0);
		} else {
			model.addAttribute("message", "메일이 전송되었습니다");
			model.addAttribute("code", ms.sendCode(email));
			model.addAttribute("email", email);
		}
	}
	@Override
	public void checkId(String name, String id, Model model) {
		MemberDTO dto = null;
		dto = dao.selectId(id);
		model.addAttribute("toDo", "findPw");
		if(dto == null) {
			model.addAttribute("message", "입력하신 아이디는 없는 아이디입니다");
			model.addAttribute("code", 0);
		} else if(!dto.getName().equals(name)) {
			model.addAttribute("message", "회원정보가 일치하지 않습니다");
			model.addAttribute("code", 0);
		} else {
			model.addAttribute("message", "메일이 전송되었습니다");
			model.addAttribute("code", ms.sendCode(dto.getEmail()));
			model.addAttribute("id", dto.getId());
		}
	}
	@Override
	public void modifyPw(String id, String pw) {
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dao.modifyPw(dto);
	}
	@Override
	public String send6Num(String m_tel) {
		String num = nss.rand();
		nss.sendSms(m_tel, "인증번호 [" + num + "]를 입력해주세요");
		return num;
	}
	@Override
	public String dbNameCheck(MemberDTO dto, HttpServletRequest request) {
		MemberDTO dbDto = dao.dbNameCheck(dto);
		if(dbDto == null) {
			return "0";
		} else if(!dbDto.getName().equals(dto.getName())) {
			return "-1";
		} else {
			HttpSession session = (HttpSession) request.getSession();
			session.setAttribute("UserId", dbDto.getId());
			return "1";
		}
	}
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
}
