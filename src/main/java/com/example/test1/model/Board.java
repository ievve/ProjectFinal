package com.example.test1.model;

import lombok.Data;

@Data 
public class Board {
	
    private int bNo;			//게시물 번호
    private String aId;			//유저이름
    private String title;		//게시물 제목
    private String content;		//게시물 내용
    private int bView;			//조회수
    private String bStatus;		//종류 - B:일반 / A:익명 / N:공지
    private String createdate;	//생성일
    private String changedate;	//수정일
    private String delFlag;		//삭제여부 - Y: 삭제 / N: 삭제X
    
    //댓글
    private int cno;
    private int cno2;
    private String bcontent;
    private String cStatus;
}