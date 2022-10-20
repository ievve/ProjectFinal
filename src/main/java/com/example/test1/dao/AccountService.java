package com.example.test1.dao;

import java.util.HashMap;

import com.example.test1.model.Account;

public interface AccountService {

//  ------------------------------------회원가입--------------------------------------------
    
    // 아이디 중복확인
    public int selectId(HashMap<String, Object> map); 

    // 유저 삽입
    void insertAccount(HashMap<String, Object> map);

//  ------------------------------------로그인----------------------------------------------
	
    // 아이디 및 비밀번호 확인
    public int selectLogin(HashMap<String, Object> map); 
    
    // 세션 정보
    public Account login(Account user);
    
//  ------------------------------------마이페이지------------------------------------------
	
	// 회원정보 추출
    public HashMap<String, Object> selectAccountList(HashMap<String, Object> map) throws Exception;
	
    // 삭제
    void deleteAccount(HashMap<String, Object> map);

    // 일반유저 수정
    void updateAccount(HashMap<String, Object> map);
    
}
