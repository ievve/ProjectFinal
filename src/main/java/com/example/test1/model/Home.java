package com.example.test1.model;

import lombok.Data;

@Data 
public class Home {
    
    private String hNo;         //매물번호
    private String aId;         //아이디
    private String hChoice;     //종류 - A:아파트 / H:주택 / V:빌라
    private String hName;       //매물이름
    private String hPrice;      //매물가격 (보증금 or 거래가격)
    private String hMo;         //월세
    private String hAe;         //관리비
    private String hAdd;        //위치
    private String hHigh;       //헤당 층 수
    private String hAllHigh;    //건물 층 수
    private String hRoomno;     //방 수
    private String hBathno;     //욕실 수
    private String hMain;       //주용도
    private String hWay;        //방향
    private String hRoomSize1;  //m2 수
    private String hRoomSize2;  //평 수 
    private String hInfo;       //상세 설명
    private String hMoveIn;     //입주가능일
    private String hImage;      //매물사진
    private String delFlag;     //삭제여부 - Y: 삭제 / N: 삭제X
    private String saleFlag;    //판매여부 - Y: 삭제 / N: 삭제X
    private String createdate;  //생성일
    private String changedate;  //수정일
    private String saledate;    //판매일
    
}