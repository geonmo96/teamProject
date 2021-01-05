package com.care.root.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.board.dao.BoardDAO;
import com.care.root.board.dto.BoardDTO;

@Service
public class BoardServiceImpl {
	@Autowired BoardDAO boardDao;
	
<<<<<<< HEAD
	public void listView(Model model) {
		ArrayList<BoardDTO> list = boardDao.listView();
		model.addAttribute("list", list);
		model.addAttribute("totalContent", boardDao.totalContent());
		System.out.println(boardDao.totalContent() /10 + 1);
=======
	public void listView(Model model, int page) {
		int pageLetter = 10;
		int allCount = boardDao.totalContent();
		int totalPage = allCount / pageLetter;
		if(allCount % pageLetter != 0) { 
			totalPage += 1; 
		}
		int end = page*pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("list", boardDao.listView(start, end));
		
		
		
		
		
		
		
>>>>>>> 88fe3b96b5a90f78ce0103b4c320956359edd75e
	}
	
	public void contentView(Model model, String write_no) {
		boardDao.hit(write_no);
		BoardDTO boardDto = boardDao.contentView(write_no);
		model.addAttribute("boardDto", boardDto);
	}
	
	public void modifyForm(Model model, String write_no) {
		model.addAttribute("boardDto", boardDao.contentView(write_no));
	}
	public void modify(Model model, BoardDTO boardDto) {
		boardDao.modify(boardDto);
		model.addAttribute("write_no", boardDto.getWrite_no());
	}
	
	public void delete(String write_no) {
		boardDao.delete(write_no);
	}
	
	public void write(BoardDTO boardDto) {
		boardDao.write(boardDto);
	}
}
