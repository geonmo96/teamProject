package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;

@Service
public interface MemberService {
	public void join(MemberDTO dto);
	public String dbIdCheck(String id);
	public String login(MemberDTO dto, Model model, HttpServletRequest request);
<<<<<<< HEAD
=======
	public void logout(HttpServletRequest request);
	public void checkEmail(String name, String email, Model model);
	public void checkId(String name, String id, Model model);
	public void modifyPw(String id, String pw);
	public String send6Num(String m_tel);
	public String dbNameCheck(MemberDTO dto, HttpServletRequest request);
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
}
