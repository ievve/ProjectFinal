package com.example.test1.model;

import lombok.Data;

@Data 
public class Account {
    
    private String aId;         //아이디
    private String passwd;      //비밀번호
    private String aName;       //이름
    private String aTel;        //전화번호
    private String aEmail;      //이메일
    private String sName;       //사업장 이름
    private String sNum;        //사업자번호
    private String sTel;        //사업장 전화번호
    private String sAdd;        //사업장 주소
    private String status;      //종류 - U:일반 / S:중개사 / A:관리자
    private String delFlag;     //삭제여부 - Y: 삭제 / N: 삭제X
    private String createdate;  //생성일
    private String changedate;  //수정일
    
}