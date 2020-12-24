package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dao.MemberDAO;
import com.care.root.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO dao;
	
	@Override
	public void join(MemberDTO dto) {
		dao.join(dto);
	}
	@Override
	public String dbIdCheck(String id) {
		String dbId = dao.dbIdCheck(id);
		if(dbId == null) {
			return "�쉶�썝媛��엯 媛��뒫";
		} else {
			return "以묐났�맂 �븘�씠�뵒�엯�땲�떎";
		}
	}
	@Override
	public String login(MemberDTO dto, Model model, HttpServletRequest request) {
		MemberDTO dbDto = dao.login(dto);
		if(dbDto == null) {
			model.addAttribute("message", "�븘�씠�뵒媛� �뾾�뒿�땲�떎.");
			return "/member/loginForm";
		}else if(!dbDto.getPw().equals(dto.getPw())) {
			model.addAttribute("message", "鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�뒿�땲�떎");
			return "/member/loginForm";
		}else {
			//TODO 硫붿씤�럹�씠吏� �닔�젙 �삁�젙
			HttpSession session = request.getSession();
			session.setAttribute("USER", dbDto.getId());
			return "main";
		}
	}
}
