package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import com.example.test1.model.Board;

public interface BoardService {

// ---------------------------공통-------------------------------------

	// 상세 select
	HashMap<String, Object> selectBoard(HashMap<String, Object> map);

	// 삽입
	void insertBoard(HashMap<String, Object> map);

	// 삭제
	void deleteBoard(HashMap<String, Object> map);

	// 수정
	void updateBoard(HashMap<String, Object> map);

// ---------------------------공지사항-----------------------------------

	// 전체 select
	List<Board> selectNoticeList() throws Exception;

// ---------------------------익명게시판---------------------------------

	// 전체 select
	List<Board> selectAnoymousList() throws Exception;

// ---------------------------자유게시판---------------------------------

	// 전체 select
	HashMap<String, Object> selectBoardList(HashMap<String, Object> map) throws Exception;
	
	// 댓글 삽입
	void insertComment(HashMap<String, Object> map);
}
