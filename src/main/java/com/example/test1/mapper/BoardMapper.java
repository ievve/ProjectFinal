package com.example.test1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test1.model.Board;

@Mapper
public interface BoardMapper {

//---------------------------공통------------------------------------

	// 조회수
	void updateCnt(HashMap<String, Object> map);

	// 상세 select
	Board selectBoard(HashMap<String, Object> map);
	List<Board> selectCommentList(HashMap<String, Object> map);
	List<Board> selectReCommentList(HashMap<String, Object> map);

	// 삽입
	void insertBoard(HashMap<String, Object> map);

	// 삭제
	void deleteBoard(HashMap<String, Object> map);

	// 수정
	void updateBoard(HashMap<String, Object> map);

	//
	Board selectGetBoard(HashMap<String, Object> map);

//---------------------------공지사항----------------------------------

	// 전체 select
	List<Board> selectNoticeList() throws Exception;

//--------------------------익명게시판----------------------------------

	// 전체 select
	List<Board> selectAnoymousList() throws Exception;

// -------------------------자유게시판----------------------------------

	// 전체 select
	List<Board> selectBoardList(HashMap<String, Object> map) throws Exception;
	int selectBoardCnt();
	// 삽입
	void insertComment(HashMap<String, Object> map);

}
