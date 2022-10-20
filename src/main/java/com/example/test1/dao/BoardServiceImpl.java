package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test1.mapper.BoardMapper;
import com.example.test1.model.Board;

@Service // 서비스임을 선언
public class BoardServiceImpl implements BoardService {
	
	@Autowired // Mapper와 연결
	private BoardMapper boardMapper;

// ---------------------------공통-------------------------------------

	// 상세 select
	@Override
	public HashMap<String, Object> selectBoard(HashMap<String, Object> map) {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardMapper.updateCnt(map);
		Board b = boardMapper.selectBoard(map);
		List<Board> commentList = boardMapper.selectCommentList(map);
		List<Board> recommentList = boardMapper.selectReCommentList(map);
		resultMap.put("board", b);
		resultMap.put("commentList", commentList);
		resultMap.put("recommentList", recommentList);
		
		return resultMap;
	}

	// 삽입
	@Override
	public void insertBoard(HashMap<String, Object> map) {
		boardMapper.insertBoard(map);
	}

	// 삭제
	@Override
	public void deleteBoard(HashMap<String, Object> map) {
		boardMapper.deleteBoard(map);
	}

	// 수정
	@Override
	public void updateBoard(HashMap<String, Object> map) {
		boardMapper.updateBoard(map);
	}

// ---------------------------공지사항-----------------------------------

	// 전체 select
	@Override
	public List<Board> selectNoticeList() throws Exception {
		return boardMapper.selectNoticeList();
	}

// ---------------------------익명게시판----------------------------------

	// 전체 select
	@Override
	public List<Board> selectAnoymousList() throws Exception {
		return boardMapper.selectAnoymousList();
	}

// ---------------------------자유게시판----------------------------------

	// 전체 select
	@Override
	public HashMap<String, Object> selectBoardList(HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int startNum = Integer.parseInt(String.valueOf(map.get("startNum")));
		int lastNum = Integer.parseInt(String.valueOf(map.get("lastNum")));
		map.put("startNum", startNum);
		map.put("lastNum", lastNum);
		List<Board> list = boardMapper.selectBoardList(map);
		int cnt = boardMapper.selectBoardCnt();
		resultMap.put("list", list);
		resultMap.put("cnt", cnt);
		return resultMap;
	}
	
	// 댓글 삽입
	@Override
	public void insertComment(HashMap<String, Object> map) {
		boardMapper.insertComment(map);
	}

}